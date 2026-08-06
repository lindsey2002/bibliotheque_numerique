import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ConfigurationEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<void> _verifierSuperAdmin(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final superAdmin = await SuperAdmin.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (superAdmin == null) throw Exception('Accès réservé au Super Admin.');
  }

  Future<TauxCommission> definirTauxCommission(
    Session session, {
    required double tauxPlateforme,
    required double montantParLectureUnique,
    required int seuilLecteursUniquesGratuit,
  }) async {
    await _verifierSuperAdmin(session);

    final actuel = await TauxCommission.db.findFirstRow(session, where: (t) => t.dateFin.equals(null));
    if (actuel != null) {
      actuel.dateFin = DateTime.now();
      await TauxCommission.db.updateRow(session, actuel);
    }

    return await TauxCommission.db.insertRow(
      session,
      TauxCommission(
        tauxPlateforme: tauxPlateforme,
        montantParLectureUnique: montantParLectureUnique,
        seuilLecteursUniquesGratuit: seuilLecteursUniquesGratuit,
      ),
    );
  }

  Future<TarifAbonnement> definirTarif(Session session, TypeAbonnement type, double prix) async {
    await _verifierSuperAdmin(session);

    final actuel = await TarifAbonnement.db.findFirstRow(
      session,
      where: (t) => t.type.equals(type) & t.dateFin.equals(null),
    );
    if (actuel != null) {
      actuel.dateFin = DateTime.now();
      await TarifAbonnement.db.updateRow(session, actuel);
    }

    return await TarifAbonnement.db.insertRow(session, TarifAbonnement(type: type, prix: prix));
  }
}
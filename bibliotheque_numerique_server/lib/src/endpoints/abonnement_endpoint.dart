import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class AbonnementEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Lecteur> _lecteurCourant(Session session) async {
    final authUserId = UuidValue.fromString(
      session.authenticated!.userIdentifier,
    );
    final lecteur = await Lecteur.db.findFirstRow(
      session,
      where: (t) => t.authUserId.equals(authUserId),
    );
    if (lecteur == null) throw Exception('Profil Lecteur introuvable.');
    return lecteur;
  }

  Future<Abonnement> souscrire(Session session, TypeAbonnement type) async {
    final lecteur = await _lecteurCourant(session);

    final tarif = await TarifAbonnement.db.findFirstRow(
      session,
      where: (t) => t.type.equals(type) & t.dateFin.equals(null),
    );
    if (tarif == null) {
      throw Exception(
        'Aucun tarif configuré pour ce palier. Contactez un administrateur.',
      );
    }

    final actuel = await Abonnement.db.findFirstRow(
      session,
      where: (t) => t.lecteurId.equals(lecteur.id!) & t.dateFin.equals(null),
    );
    if (actuel != null) {
      actuel.dateFin = DateTime.now();
      await Abonnement.db.updateRow(session, actuel);
    }

    return await Abonnement.db.insertRow(
      session,
      Abonnement(type: type, prix: tarif.prix, lecteurId: lecteur.id!),
    );
  }

  Future<Abonnement> demarrerEssaiPremium(Session session) async {
    final lecteur = await _lecteurCourant(session);

    if (lecteur.essaiPremiumUtilise) {
      throw Exception('Essai Premium déjà utilisé sur ce compte.');
    }

    final actuel = await Abonnement.db.findFirstRow(
      session,
      where: (t) => t.lecteurId.equals(lecteur.id!) & t.dateFin.equals(null),
    );
    if (actuel != null) {
      actuel.dateFin = DateTime.now();
      await Abonnement.db.updateRow(session, actuel);
    }

    final abonnement = await Abonnement.db.insertRow(
      session,
      Abonnement(
        type: TypeAbonnement.premium,
        prix: 0,
        essaiPremiumActif: true,
        dateFinEssaiPremium: DateTime.now().add(const Duration(days: 7)),
        lecteurId: lecteur.id!,
      ),
    );

    lecteur.essaiPremiumUtilise = true;
    await Lecteur.db.updateRow(session, lecteur);
    return abonnement;
  }

  Future<List<Abonnement>> historique(Session session) async {
    final lecteur = await _lecteurCourant(session);
    return await Abonnement.db.find(
      session,
      where: (t) => t.lecteurId.equals(lecteur.id!),
      orderBy: (t) => t.dateDebut,
      orderDescending: true,
    );
  }
}

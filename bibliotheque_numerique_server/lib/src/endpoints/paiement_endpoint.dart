import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PaiementEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Paiement> effectuer(Session session, int abonnementId, String mode) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final lecteur = await Lecteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (lecteur == null) throw Exception('Profil Lecteur introuvable.');

    final abonnement = await Abonnement.db.findById(session, abonnementId);
    if (abonnement == null || abonnement.lecteurId != lecteur.id) {
      throw Exception('Abonnement introuvable.');
    }
    if (abonnement.type == TypeAbonnement.gratuit) {
      throw Exception('Le palier Gratuit ne nécessite aucun paiement.');
    }

    return await Paiement.db.insertRow(
      session,
      Paiement(
        montant: abonnement.prix,
        mode: mode,
        abonnementId: abonnement.id!,
      ),
    );
  }
}
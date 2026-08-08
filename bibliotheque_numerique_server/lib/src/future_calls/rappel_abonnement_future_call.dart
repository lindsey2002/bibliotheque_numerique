import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';
import '../endpoints/notification_endpoint.dart';

class RappelAbonnementFutureCall extends FutureCall<SerializableModel> {
  @override
  Future<void> invoke(Session session, SerializableModel? object) async {
    final maintenant = DateTime.now();
    final dansTroisJours = maintenant.add(const Duration(days: 3));

    final essaisExpirants = await Abonnement.db.find(
      session,
      where: (t) =>
          t.essaiPremiumActif.equals(true) &
          t.dateFin.equals(null) &
          (t.dateFinEssaiPremium > maintenant) &
          (t.dateFinEssaiPremium < dansTroisJours),
    );

    for (final abonnement in essaisExpirants) {
      await envoyerNotification(
        session,
        destinataireType: TypeDestinataire.lecteur,
        destinataireId: abonnement.lecteurId,
        titre: 'Votre essai Premium se termine bientôt',
        message: 'Votre essai gratuit se termine dans moins de 3 jours. Passez en Premium pour ne rien perdre.',
      );
    }

    // Se replanifie pour le lendemain — c'est ce qui crée la répétition quotidienne.
    await session.serverpod.futureCallWithDelay(
      'rappelAbonnement',
      null,
      const Duration(days: 1),
    );

    final paiementsProches = await Abonnement.db.find(
  session,
  where: (t) =>
      t.type.equals(TypeAbonnement.premium) &
      t.essaiPremiumActif.equals(false) &
      t.dateFin.equals(null) &
      (t.dateProchainPaiement > maintenant) &
      (t.dateProchainPaiement < dansTroisJours),
);

for (final abonnement in paiementsProches) {
  await envoyerNotification(
    session,
    destinataireType: TypeDestinataire.lecteur,
    destinataireId: abonnement.lecteurId,
    titre: 'Renouvellement Premium à venir',
    message: 'Votre prochain prélèvement Premium est prévu dans moins de 3 jours.',
  );
}
  }
}
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

const _pagesGratuitesApresChangement = 15;

class AccesEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<ResultatAcces> verifierAcces(Session session, int livreId) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final lecteur = await Lecteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (lecteur == null) throw Exception('Profil Lecteur introuvable.');

    final livre = await Livre.db.findById(session, livreId);
    if (livre == null) throw Exception('Livre introuvable.');

    if (livre.statutPrix == StatutPrix.gratuit) {
      return ResultatAcces(statut: 'complet');
    }

    final premiumActif = await Abonnement.db.findFirstRow(
      session,
      where: (t) => t.lecteurId.equals(lecteur.id!) &
          t.type.equals(TypeAbonnement.premium) &
          t.dateFin.equals(null),
    );
    if (premiumActif != null) {
      return ResultatAcces(statut: 'complet');
    }

    final favori = await Favoris.db.findFirstRow(
      session,
      where: (t) => t.lecteurId.equals(lecteur.id!) & t.livreId.equals(livreId),
    );
    if (favori != null) {
      return ResultatAcces(statut: 'partielGrace', pagesAutorisees: _pagesGratuitesApresChangement);
    }

    return ResultatAcces(statut: 'refuse');
  }
}
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class FavorisEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Lecteur> _lecteurCourant(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final lecteur = await Lecteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (lecteur == null) throw Exception('Profil Lecteur introuvable.');
    return lecteur;
  }

  Future<Favoris> ajouter(Session session, int livreId) async {
    final lecteur = await _lecteurCourant(session);

    final existant = await Favoris.db.findFirstRow(
      session,
      where: (t) => t.lecteurId.equals(lecteur.id!) & t.livreId.equals(livreId),
    );
    if (existant != null) return existant;

    return await Favoris.db.insertRow(
      session,
      Favoris(lecteurId: lecteur.id!, livreId: livreId),
    );
  }

  Future<void> retirer(Session session, int livreId) async {
    final lecteur = await _lecteurCourant(session);

    final favori = await Favoris.db.findFirstRow(
      session,
      where: (t) => t.lecteurId.equals(lecteur.id!) & t.livreId.equals(livreId),
    );
    if (favori != null) await Favoris.db.deleteRow(session, favori);
  }

  Future<List<Favoris>> mesFavoris(Session session) async {
    final lecteur = await _lecteurCourant(session);
    return await Favoris.db.find(session, where: (t) => t.lecteurId.equals(lecteur.id!));
  }
}
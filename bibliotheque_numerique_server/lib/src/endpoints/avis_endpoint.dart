import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class AvisEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Avis> laisser(Session session, int livreId, int note, String? commentaire) async {
    if (note < 1 || note > 5) {
      throw Exception('La note doit être comprise entre 1 et 5.');
    }

    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final lecteur = await Lecteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (lecteur == null) throw Exception('Profil Lecteur introuvable.');

    final existant = await Avis.db.findFirstRow(
      session,
      where: (t) => t.lecteurId.equals(lecteur.id!) & t.livreId.equals(livreId),
    );
    if (existant != null) {
      throw Exception('Vous avez déjà laissé un avis sur ce livre.');
    }

    return await Avis.db.insertRow(
      session,
      Avis(note: note, commentaire: commentaire, lecteurId: lecteur.id!, livreId: livreId),
    );
  }

}
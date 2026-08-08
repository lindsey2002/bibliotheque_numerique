import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';
import 'notification_endpoint.dart';

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

  Future<Avis> repondre(Session session, int avisId, String reponse) async {
  final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
  final auteur = await Auteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
  if (auteur == null) throw Exception('Seul un Auteur peut répondre à un avis.');

  final avis = await Avis.db.findById(session, avisId);
  if (avis == null) throw Exception('Avis introuvable.');

  final livre = await Livre.db.findById(session, avis.livreId);
  if (livre == null || livre.auteurId != auteur.id) {
    throw Exception('Vous ne pouvez répondre qu\'aux avis sur vos propres livres.');
  }

  avis.reponseAuteur = reponse;
  avis.dateReponseAuteur = DateTime.now();
  await Avis.db.updateRow(session, avis);

  await envoyerNotification(
    session,
    destinataireType: TypeDestinataire.lecteur,
    destinataireId: avis.lecteurId,
    titre: 'Réponse à votre avis',
    message: 'L\'auteur a répondu à votre avis sur "${livre.titre}".',
  );

  return avis;
}

}
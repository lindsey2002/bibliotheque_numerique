import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';
import 'notification_endpoint.dart';

class ChangementStatutEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  
  Future<ChangementStatut> proposer(
  Session session,
  int livreId,
  StatutPrix nouveauStatut,
  String messageAdmin,
) async {
  final superAdmin = await _verifierSuperAdmin(session);

  final livre = await Livre.db.findById(session, livreId);
  if (livre == null) throw Exception('Livre introuvable.');
  if (livre.statutPrix == nouveauStatut) {
    throw Exception('Le livre a déjà ce statut.');
  }

  final changement = await ChangementStatut.db.insertRow(
    session,
    ChangementStatut(
      ancienStatut: livre.statutPrix,
      nouveauStatut: nouveauStatut,
      messageAdmin: messageAdmin,
      livreId: livreId,
      auteurId: livre.auteurId,
      proposeParId: superAdmin.id,
    ),
  );

  await envoyerNotification(
    session,
    destinataireType: TypeDestinataire.auteur,
    destinataireId: livre.auteurId,
    titre: 'Proposition de changement de statut',
    message: '"${livre.titre}" pourrait passer en ${nouveauStatut.name}. Merci de répondre.',
  );

  return changement;
}

Future<ChangementStatut> repondre(Session session, int changementId, bool accepte) async {
  final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
  final auteur = await Auteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
  if (auteur == null) throw Exception('Seul un Auteur peut répondre.');

  final changement = await ChangementStatut.db.findById(session, changementId);
  if (changement == null || changement.auteurId != auteur.id) {
    throw Exception('Proposition introuvable.');
  }
  if (changement.reponseAuteur != null) {
    throw Exception('Cette proposition a déjà reçu une réponse.');
  }

  changement.reponseAuteur = accepte;
  changement.dateReponse = DateTime.now();
  await ChangementStatut.db.updateRow(session, changement);

  final livre = await Livre.db.findById(session, changement.livreId);
  if (accepte && livre != null) {
    livre.statutPrix = changement.nouveauStatut;
    await Livre.db.updateRow(session, livre);
  }

  if (changement.proposeParId != null) {
    await envoyerNotification(
      session,
      destinataireType: TypeDestinataire.superadmin,
      destinataireId: changement.proposeParId!,
      titre: accepte ? 'Changement de statut accepté' : 'Changement de statut refusé',
      message: '${auteur.nom} a ${accepte ? "accepté" : "refusé"} le changement pour "${livre?.titre ?? "un livre"}".',
    );
  }

  return changement;
}


  Future<List<ChangementStatut>> mesPropositionsEnAttente(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final auteur = await Auteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (auteur == null) throw Exception('Profil Auteur introuvable.');

    return await ChangementStatut.db.find(
      session,
      where: (t) => t.auteurId.equals(auteur.id!) & t.reponseAuteur.equals(null),
      orderBy: (t) => t.dateProposition,
    );
  }

  Future<SuperAdmin> _verifierSuperAdmin(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final superAdmin = await SuperAdmin.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (superAdmin == null) throw Exception('Accès réservé au Super Admin.');
    return superAdmin;
  }
}
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ChangementStatutEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<ChangementStatut> proposer(
    Session session,
    int livreId,
    StatutPrix nouveauStatut,
    String messageAdmin,
  ) async {
    await _verifierSuperAdmin(session);

    final livre = await Livre.db.findById(session, livreId);
    if (livre == null) throw Exception('Livre introuvable.');
    if (livre.statutPrix == nouveauStatut) {
      throw Exception('Le livre a déjà ce statut.');
    }

    return await ChangementStatut.db.insertRow(
      session,
      ChangementStatut(
        ancienStatut: livre.statutPrix,
        nouveauStatut: nouveauStatut,
        messageAdmin: messageAdmin,
        livreId: livreId,
        auteurId: livre.auteurId,
      ),
    );
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

    if (accepte) {
      final livre = await Livre.db.findById(session, changement.livreId);
      if (livre != null) {
        livre.statutPrix = changement.nouveauStatut;
        await Livre.db.updateRow(session, livre);
      }
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
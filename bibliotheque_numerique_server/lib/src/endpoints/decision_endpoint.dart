import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';
import 'notification_endpoint.dart';

class DecisionEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<List<Livre>> listerEnAttente(Session session) async {
    await _verifierSuperAdmin(session);

    final decisionsEnAttente = await Decision.db.find(
      session,
      where: (t) => t.etat.equals(EtatDecision.enAttente),
      orderBy: (t) => t.dateDecision,
    );

    final livreIds = decisionsEnAttente.map((d) => d.livreId).toList();
    if (livreIds.isEmpty) return [];

    return await Livre.db.find(
      session,
      where: (t) => t.id.inSet(livreIds.toSet()),
    );
  }

  Future<Decision> valider(Session session, int decisionId) async {
  final superAdmin = await _verifierSuperAdmin(session);

  final decision = await Decision.db.findById(session, decisionId);
  if (decision == null) throw Exception('Décision introuvable.');
  if (decision.etat != EtatDecision.enAttente) {
    throw Exception('Cette décision a déjà été traitée.');
  }

  decision.etat = EtatDecision.valide;
  decision.superAdminId = superAdmin.id;
  decision.dateDecision = DateTime.now();
  await Decision.db.updateRow(session, decision);

  final livre = await Livre.db.findById(session, decision.livreId);
  if (livre != null) {
    await envoyerNotification(
      session,
      destinataireType: TypeDestinataire.auteur,
      destinataireId: livre.auteurId,
      titre: 'Ouvrage validé',
      message: 'Votre ouvrage "${livre.titre}" a été validé.',
    );
  }

  return decision;
}

  Future<Decision> rejeter(Session session, int decisionId) async {
  final superAdmin = await _verifierSuperAdmin(session);

  final decision = await Decision.db.findById(session, decisionId);
  if (decision == null) throw Exception('Décision introuvable.');
  if (decision.etat != EtatDecision.enAttente) {
    throw Exception('Cette décision a déjà été traitée.');
  }

  decision.etat = EtatDecision.refuse;
  decision.superAdminId = superAdmin.id;
  decision.dateDecision = DateTime.now();
  await Decision.db.updateRow(session, decision);

  final livre = await Livre.db.findById(session, decision.livreId);
  if (livre != null) {
    await envoyerNotification(
      session,
      destinataireType: TypeDestinataire.auteur,
      destinataireId: livre.auteurId,
      titre: 'Ouvrage refusé',
      message: 'Votre ouvrage "${livre.titre}" a été refusé.',
    );
  }

  return decision;
}

  Future<Decision> resoumettre(Session session, int livreId, String justification) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final auteur = await Auteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (auteur == null) throw Exception('Seul un Auteur peut resoumettre un ouvrage.');

    final livre = await Livre.db.findById(session, livreId);
    if (livre == null || livre.auteurId != auteur.id) {
      throw Exception('Ce livre ne vous appartient pas.');
    }

    return await Decision.db.insertRow(
      session,
      Decision(
        etat: EtatDecision.enAttente,
        justificationAuteur: justification,
        livreId: livreId,
      ),
    );
  }

  Future<SuperAdmin> _verifierSuperAdmin(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final superAdmin = await SuperAdmin.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (superAdmin == null) throw Exception('Accès réservé au Super Admin.');
    return superAdmin;
  }
}
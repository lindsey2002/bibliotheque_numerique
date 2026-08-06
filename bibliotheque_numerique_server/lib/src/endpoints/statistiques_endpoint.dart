import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class StatistiquesEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Map<String, int>> evolutionLecteursUniques(Session session, int livreId) async {
    final livre = await Livre.db.findById(session, livreId);
    if (livre == null) throw Exception('Livre introuvable.');
    await _verifierAutorise(session, livre);

    final lectures = await Lecture.db.find(session, where: (t) => t.livreId.equals(livreId));

    final Map<String, int> parMois = {};
    for (final l in lectures) {
      parMois[l.moisAnnee] = (parMois[l.moisAnnee] ?? 0) + 1;
    }
    return parMois;
  }

  Future<void> _verifierAutorise(Session session, Livre livre) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);

    final superAdmin = await SuperAdmin.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (superAdmin != null) return;

    final auteur = await Auteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (auteur != null && auteur.id == livre.auteurId) return;

    throw Exception('Accès réservé à l\'auteur du livre ou à un Super Admin.');
  }
}
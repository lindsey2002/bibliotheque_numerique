import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class LivreEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Livre> soumettre(
    Session session, {
    required String titre,
    String? description,
    required int categorieId,
    required int langueId,
    required ModeAudio modeAudio,
    int? ambianceId,
  }) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);

    final auteur = await Auteur.db.findFirstRow(
      session,
      where: (t) => t.authUserId.equals(authUserId),
    );
    if (auteur == null) {
      throw Exception('Seul un profil Auteur peut soumettre un ouvrage.');
    }

    if (modeAudio != ModeAudio.ambianceSonore && ambianceId != null) {
      throw Exception('Une ambiance sonore ne peut être définie que si le mode audio est "ambianceSonore".');
    }
    if (modeAudio == ModeAudio.ambianceSonore && ambianceId == null) {
      throw Exception('Le mode "ambianceSonore" nécessite de choisir une ambiance.');
    }

    final livre = await Livre.db.insertRow(
      session,
      Livre(
        titre: titre,
        description: description,
        categorieId: categorieId,
        langueId: langueId,
        modeAudio: modeAudio,
        ambianceId: ambianceId,
        auteurId: auteur.id!,
      ),
    );

    await Decision.db.insertRow(
      session,
      Decision(
        etat: EtatDecision.enAttente,
        livreId: livre.id!,
      ),
    );

    return livre;
  }

  Future<List<Livre>> catalogue(Session session, {int? categorieId, int? langueId}) async {
    return await Livre.db.find(
      session,
      where: (t) {
        var condition = t.id.notEquals(-1);
        if (categorieId != null) condition = condition & t.categorieId.equals(categorieId);
        if (langueId != null) condition = condition & t.langueId.equals(langueId);
        return condition;
      },
      orderBy: (t) => t.dateSoumission,
      orderDescending: true,
    );
  }

  Future<List<Livre>> monCatalogue(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final auteur = await Auteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (auteur == null) throw Exception('Profil Auteur introuvable.');

    return await Livre.db.find(session, where: (t) => t.auteurId.equals(auteur.id!));
  }
}
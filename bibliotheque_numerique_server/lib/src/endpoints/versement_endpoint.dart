import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class VersementEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<void> _verifierSuperAdmin(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final superAdmin = await SuperAdmin.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (superAdmin == null) throw Exception('Accès réservé au Super Admin.');
  }

  Future<List<Versement>> genererPourLeMois(Session session, String moisAnnee) async {
    await _verifierSuperAdmin(session);

    final taux = await TauxCommission.db.findFirstRow(session, where: (t) => t.dateFin.equals(null));
    if (taux == null) {
      throw Exception('Aucun taux de commission configuré.');
    }

    final auteurs = await Auteur.db.find(session);
    final versements = <Versement>[];

    for (final auteur in auteurs) {
      final dejaGenere = await Versement.db.findFirstRow(
        session,
        where: (t) => t.auteurId.equals(auteur.id!) & t.mois.equals(moisAnnee),
      );
      if (dejaGenere != null) continue;

      final livres = await Livre.db.find(session, where: (t) => t.auteurId.equals(auteur.id!));

      int totalLecteursUniques = 0;
      double montantBrut = 0;

      for (final livre in livres) {
        final lectures = await Lecture.db.find(
          session,
          where: (t) => t.livreId.equals(livre.id!) & t.moisAnnee.equals(moisAnnee),
        );
        final nbUniques = lectures.length;

        if (livre.statutPrix == StatutPrix.gratuit &&
            nbUniques < taux.seuilLecteursUniquesGratuit) {
          continue;
        }

        totalLecteursUniques += nbUniques;
        montantBrut += nbUniques * taux.montantParLectureUnique;
      }

      if (montantBrut <= 0) continue;

      final montantNet = montantBrut * (1 - taux.tauxPlateforme);

      versements.add(await Versement.db.insertRow(
        session,
        Versement(
          mois: moisAnnee,
          montantBrut: montantBrut,
          montantNet: montantNet,
          nbLecteursUniques: totalLecteursUniques,
          auteurId: auteur.id!,
          tauxId: taux.id!,
        ),
      ));
    }

    return versements;
  }

  Future<List<Versement>> mesVersements(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final auteur = await Auteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (auteur == null) throw Exception('Profil Auteur introuvable.');

    return await Versement.db.find(
      session,
      where: (t) => t.auteurId.equals(auteur.id!),
      orderBy: (t) => t.mois,
      orderDescending: true,
    );
  }
}
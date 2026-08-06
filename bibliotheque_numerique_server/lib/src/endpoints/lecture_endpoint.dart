import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';



class LectureEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Lecture?> enregistrer(Session session, int livreId, int pourcentageLu) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
    final lecteur = await Lecteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (lecteur == null) throw Exception('Profil Lecteur introuvable.');

    final livre = await Livre.db.findById(session, livreId);
    if (livre == null) throw Exception('Livre introuvable.');

    final maintenant = DateTime.now();
    final moisAnnee = '${maintenant.year}-${maintenant.month.toString().padLeft(2, '0')}';

    final existante = await Lecture.db.findFirstRow(
      session,
      where: (t) => t.lecteurId.equals(lecteur.id!) &
          t.livreId.equals(livreId) &
          t.moisAnnee.equals(moisAnnee),
    );
    if (existante != null) {
      return null;
    }

    return await Lecture.db.insertRow(
      session,
      Lecture(
        pourcentageLu: pourcentageLu,
        moisAnnee: moisAnnee,
        lecteurId: lecteur.id!,
        livreId: livreId,
      ),
    );
  }

  Future<int> compterLecteursUniquesDuMois(Session session, int livreId, String moisAnnee) async {
    final lectures = await Lecture.db.find(
      session,
      where: (t) => t.livreId.equals(livreId) & t.moisAnnee.equals(moisAnnee),
    );
    return lectures.length;
  }
}
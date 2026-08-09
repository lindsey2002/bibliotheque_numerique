import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ProfilEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Lecteur> creerProfilLecteur(
    Session session, {
    required String nom,
    required String email,
    String? languePreferee,
  }) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);

    final existant = await Lecteur.db.findFirstRow(
      session,
      where: (t) => t.authUserId.equals(authUserId),
    );
    if (existant != null) {
      throw Exception('Un profil Lecteur existe déjà pour ce compte.');
    }

    return await Lecteur.db.insertRow(
      session,
      Lecteur(
        nom: nom,
        email: email,
        languePreferee: languePreferee,
        authUserId: authUserId,
        essaiPremiumUtilise: false,
      ),
    );
  }

  Future<Auteur> creerProfilAuteur(
    Session session, {
    required String nom,
    required String email,
    String? biographie,
    String? languePreferee,
  }) async {
final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);

    final existant = await Auteur.db.findFirstRow(
      session,
      where: (t) => t.authUserId.equals(authUserId),
    );
    if (existant != null) {
      throw Exception('Un profil Auteur existe déjà pour ce compte.');
    }

    return await Auteur.db.insertRow(
      session,
      Auteur(
        nom: nom,
        email: email,
        biographie: biographie,
        languePreferee: languePreferee,
        authUserId: authUserId,
      ),
    );
  }

  Future<String> obtenirMonRole(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
 
    if (await Lecteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId)) != null) {
      return 'lecteur';
    }
    if (await Auteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId)) != null) {
      return 'auteur';
    }
    if (await SuperAdmin.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId)) != null) {
      return 'superadmin';
    }
    return 'aucun';
  }

  Future<SuperAdmin> creerProfilSuperAdminDEV(Session session, {required String nom, required String email}) async {
  final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);
  return await SuperAdmin.db.insertRow(
    session,
    SuperAdmin(nom: nom, email: email, authUserId: authUserId),
  );
}
}
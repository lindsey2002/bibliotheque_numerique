import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class CategorieEndpoint extends Endpoint {
  Future<Categorie> creer(Session session, String nom) async {
    return await Categorie.db.insertRow(session, Categorie(nom: nom));
  }

  Future<List<Categorie>> listerToutes(Session session) async {
    return await Categorie.db.find(session, orderBy: (t) => t.nom);
  }
}
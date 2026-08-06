import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class LangueEndpoint extends Endpoint {
  Future<Langue> creer(Session session, String nom, String code) async {
    return await Langue.db.insertRow(session, Langue(nom: nom, code: code));
  }

  Future<List<Langue>> listerToutes(Session session) async {
    return await Langue.db.find(session, orderBy: (t) => t.nom);
  }
}
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class AmbianceSonoreEndpoint extends Endpoint {
  Future<AmbianceSonore> creer(Session session, String nom, String fichierAudio) async {
    return await AmbianceSonore.db.insertRow(
      session,
      AmbianceSonore(nom: nom, fichierAudio: fichierAudio),
    );
  }

  Future<List<AmbianceSonore>> listerToutes(Session session) async {
    return await AmbianceSonore.db.find(session, orderBy: (t) => t.nom);
  }
}
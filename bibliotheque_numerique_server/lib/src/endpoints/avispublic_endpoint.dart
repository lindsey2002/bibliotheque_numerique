import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class AvisPublicEndpoint extends Endpoint {
  Future<List<Avis>> avisDuLivre(Session session, int livreId) async {
    return await Avis.db.find(
      session,
      where: (t) => t.livreId.equals(livreId),
      orderBy: (t) => t.dateAvis,
      orderDescending: true,
    );
  }
}
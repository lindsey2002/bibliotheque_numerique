import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class NotificationEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<List<Notification>> mesNotifications(Session session) async {
    final (type, id) = await _identiteCourante(session);
    return await Notification.db.find(
      session,
      where: (t) => t.destinataireType.equals(type) & t.destinataireId.equals(id),
      orderBy: (t) => t.dateCreation,
      orderDescending: true,
    );
  }

  Future<void> marquerCommeLue(Session session, int notificationId) async {
    final notif = await Notification.db.findById(session, notificationId);
    if (notif == null) return;
    notif.lu = true;
    await Notification.db.updateRow(session, notif);
  }

  Stream<Notification> ecouter(Session session) async* {
    final (type, id) = await _identiteCourante(session);
    final canal = 'notif_${type.name}_$id';
    await for (final notif in session.messages.createStream<Notification>(canal)) {
      yield notif;
    }
  }

  Future<(TypeDestinataire, int)> _identiteCourante(Session session) async {
    final authUserId = UuidValue.fromString(session.authenticated!.userIdentifier);

    final lecteur = await Lecteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (lecteur != null) return (TypeDestinataire.lecteur, lecteur.id!);

    final auteur = await Auteur.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (auteur != null) return (TypeDestinataire.auteur, auteur.id!);

    final superAdmin = await SuperAdmin.db.findFirstRow(session, where: (t) => t.authUserId.equals(authUserId));
    if (superAdmin != null) return (TypeDestinataire.superadmin, superAdmin.id!);

    throw Exception('Profil introuvable.');
  }
}

/// Fonction utilitaire réutilisable dans tous les autres endpoints.
Future<void> envoyerNotification(
  Session session, {
  required TypeDestinataire destinataireType,
  required int destinataireId,
  required String titre,
  required String message,
}) async {
  final notif = await Notification.db.insertRow(
    session,
    Notification(
      titre: titre,
      message: message,
      destinataireType: destinataireType,
      destinataireId: destinataireId,
    ),
  );

  final canal = 'notif_${destinataireType.name}_$destinataireId';
  await session.messages.postMessage(canal, notif, global: false);
}
/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i1;
import 'package:serverpod_client/serverpod_client.dart' as _i2;
import 'dart:async' as _i3;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i4;
import 'package:bibliotheque_numerique_client/src/protocol/abonnement.dart'
    as _i5;
import 'package:bibliotheque_numerique_client/src/protocol/typeabonnement.dart'
    as _i6;
import 'package:bibliotheque_numerique_client/src/protocol/resultatacces.dart'
    as _i7;
import 'package:bibliotheque_numerique_client/src/protocol/ambiancesonore.dart'
    as _i8;
import 'package:bibliotheque_numerique_client/src/protocol/avis.dart' as _i9;
import 'package:bibliotheque_numerique_client/src/protocol/categorie.dart'
    as _i10;
import 'package:bibliotheque_numerique_client/src/protocol/changementstatut.dart'
    as _i11;
import 'package:bibliotheque_numerique_client/src/protocol/statutprix.dart'
    as _i12;
import 'package:bibliotheque_numerique_client/src/protocol/tauxcommission.dart'
    as _i13;
import 'package:bibliotheque_numerique_client/src/protocol/tarifabonnement.dart'
    as _i14;
import 'package:bibliotheque_numerique_client/src/protocol/livre.dart' as _i15;
import 'package:bibliotheque_numerique_client/src/protocol/decision.dart'
    as _i16;
import 'package:bibliotheque_numerique_client/src/protocol/favoris.dart'
    as _i17;
import 'package:bibliotheque_numerique_client/src/protocol/langue.dart' as _i18;
import 'package:bibliotheque_numerique_client/src/protocol/lecture.dart'
    as _i19;
import 'package:bibliotheque_numerique_client/src/protocol/modeaudio.dart'
    as _i20;
import 'package:bibliotheque_numerique_client/src/protocol/notification.dart'
    as _i21;
import 'package:bibliotheque_numerique_client/src/protocol/paiement.dart'
    as _i22;
import 'package:bibliotheque_numerique_client/src/protocol/utilisateur.dart'
    as _i23;
import 'package:bibliotheque_numerique_client/src/protocol/versement.dart'
    as _i24;
import 'protocol.dart' as _i25;

/// By extending [EmailIdpBaseEndpoint], the email identity provider endpoints
/// are made available on the server and enable the corresponding sign-in widget
/// on the client.
/// {@category Endpoint}
class EndpointEmailIdp extends _i1.EndpointEmailIdpBase {
  EndpointEmailIdp(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'emailIdp';

  /// Logs in the user and returns a new session.
  ///
  /// Throws an [EmailAccountLoginException] in case of errors, with reason:
  /// - [EmailAccountLoginExceptionReason.invalidCredentials] if the email or
  ///   password is incorrect.
  /// - [EmailAccountLoginExceptionReason.tooManyAttempts] if there have been
  ///   too many failed login attempts.
  ///
  /// Throws an [AuthUserBlockedException] if the auth user is blocked.
  @override
  _i3.Future<_i4.AuthSuccess> login({
    required String email,
    required String password,
  }) => caller.callServerEndpoint<_i4.AuthSuccess>(
    'emailIdp',
    'login',
    {
      'email': email,
      'password': password,
    },
  );

  /// Starts the registration for a new user account with an email-based login
  /// associated to it.
  ///
  /// Upon successful completion of this method, an email will have been
  /// sent to [email] with a verification link, which the user must open to
  /// complete the registration.
  ///
  /// Always returns a account request ID, which can be used to complete the
  /// registration. If the email is already registered, the returned ID will not
  /// be valid.
  @override
  _i3.Future<_i2.UuidValue> startRegistration({required String email}) =>
      caller.callServerEndpoint<_i2.UuidValue>(
        'emailIdp',
        'startRegistration',
        {'email': email},
      );

  /// Verifies an account request code and returns a token
  /// that can be used to complete the account creation.
  ///
  /// Throws an [EmailAccountRequestException] in case of errors, with reason:
  /// - [EmailAccountRequestExceptionReason.expired] if the account request has
  ///   already expired.
  /// - [EmailAccountRequestExceptionReason.policyViolation] if the password
  ///   does not comply with the password policy.
  /// - [EmailAccountRequestExceptionReason.invalid] if no request exists
  ///   for the given [accountRequestId] or [verificationCode] is invalid.
  @override
  _i3.Future<String> verifyRegistrationCode({
    required _i2.UuidValue accountRequestId,
    required String verificationCode,
  }) => caller.callServerEndpoint<String>(
    'emailIdp',
    'verifyRegistrationCode',
    {
      'accountRequestId': accountRequestId,
      'verificationCode': verificationCode,
    },
  );

  /// Completes a new account registration, creating a new auth user with a
  /// profile and attaching the given email account to it.
  ///
  /// Throws an [EmailAccountRequestException] in case of errors, with reason:
  /// - [EmailAccountRequestExceptionReason.expired] if the account request has
  ///   already expired.
  /// - [EmailAccountRequestExceptionReason.policyViolation] if the password
  ///   does not comply with the password policy.
  /// - [EmailAccountRequestExceptionReason.invalid] if the [registrationToken]
  ///   is invalid.
  ///
  /// Throws an [AuthUserBlockedException] if the auth user is blocked.
  ///
  /// Returns a session for the newly created user.
  @override
  _i3.Future<_i4.AuthSuccess> finishRegistration({
    required String registrationToken,
    required String password,
  }) => caller.callServerEndpoint<_i4.AuthSuccess>(
    'emailIdp',
    'finishRegistration',
    {
      'registrationToken': registrationToken,
      'password': password,
    },
  );

  /// Requests a password reset for [email].
  ///
  /// If the email address is registered, an email with reset instructions will
  /// be send out. If the email is unknown, this method will have no effect.
  ///
  /// Always returns a password reset request ID, which can be used to complete
  /// the reset. If the email is not registered, the returned ID will not be
  /// valid.
  ///
  /// Throws an [EmailAccountPasswordResetException] in case of errors, with reason:
  /// - [EmailAccountPasswordResetExceptionReason.tooManyAttempts] if the user has
  ///   made too many attempts trying to request a password reset.
  ///
  @override
  _i3.Future<_i2.UuidValue> startPasswordReset({required String email}) =>
      caller.callServerEndpoint<_i2.UuidValue>(
        'emailIdp',
        'startPasswordReset',
        {'email': email},
      );

  /// Verifies a password reset code and returns a finishPasswordResetToken
  /// that can be used to finish the password reset.
  ///
  /// Throws an [EmailAccountPasswordResetException] in case of errors, with reason:
  /// - [EmailAccountPasswordResetExceptionReason.expired] if the password reset
  ///   request has already expired.
  /// - [EmailAccountPasswordResetExceptionReason.tooManyAttempts] if the user has
  ///   made too many attempts trying to verify the password reset.
  /// - [EmailAccountPasswordResetExceptionReason.invalid] if no request exists
  ///   for the given [passwordResetRequestId] or [verificationCode] is invalid.
  ///
  /// If multiple steps are required to complete the password reset, this endpoint
  /// should be overridden to return credentials for the next step instead
  /// of the credentials for setting the password.
  @override
  _i3.Future<String> verifyPasswordResetCode({
    required _i2.UuidValue passwordResetRequestId,
    required String verificationCode,
  }) => caller.callServerEndpoint<String>(
    'emailIdp',
    'verifyPasswordResetCode',
    {
      'passwordResetRequestId': passwordResetRequestId,
      'verificationCode': verificationCode,
    },
  );

  /// Completes a password reset request by setting a new password.
  ///
  /// The [verificationCode] returned from [verifyPasswordResetCode] is used to
  /// validate the password reset request.
  ///
  /// Throws an [EmailAccountPasswordResetException] in case of errors, with reason:
  /// - [EmailAccountPasswordResetExceptionReason.expired] if the password reset
  ///   request has already expired.
  /// - [EmailAccountPasswordResetExceptionReason.policyViolation] if the new
  ///   password does not comply with the password policy.
  /// - [EmailAccountPasswordResetExceptionReason.invalid] if no request exists
  ///   for the given [passwordResetRequestId] or [verificationCode] is invalid.
  ///
  /// Throws an [AuthUserBlockedException] if the auth user is blocked.
  @override
  _i3.Future<void> finishPasswordReset({
    required String finishPasswordResetToken,
    required String newPassword,
  }) => caller.callServerEndpoint<void>(
    'emailIdp',
    'finishPasswordReset',
    {
      'finishPasswordResetToken': finishPasswordResetToken,
      'newPassword': newPassword,
    },
  );

  @override
  _i3.Future<bool> hasAccount() => caller.callServerEndpoint<bool>(
    'emailIdp',
    'hasAccount',
    {},
  );
}

/// By extending [RefreshJwtTokensEndpoint], the JWT token refresh endpoint
/// is made available on the server and enables automatic token refresh on the client.
/// {@category Endpoint}
class EndpointJwtRefresh extends _i4.EndpointRefreshJwtTokens {
  EndpointJwtRefresh(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'jwtRefresh';

  /// Creates a new token pair for the given [refreshToken].
  ///
  /// Can throw the following exceptions:
  /// -[RefreshTokenMalformedException]: refresh token is malformed and could
  ///   not be parsed. Not expected to happen for tokens issued by the server.
  /// -[RefreshTokenNotFoundException]: refresh token is unknown to the server.
  ///   Either the token was deleted or generated by a different server.
  /// -[RefreshTokenExpiredException]: refresh token has expired. Will happen
  ///   only if it has not been used within configured `refreshTokenLifetime`.
  /// -[RefreshTokenInvalidSecretException]: refresh token is incorrect, meaning
  ///   it does not refer to the current secret refresh token. This indicates
  ///   either a malfunctioning client or a malicious attempt by someone who has
  ///   obtained the refresh token. In this case the underlying refresh token
  ///   will be deleted, and access to it will expire fully when the last access
  ///   token is elapsed.
  ///
  /// This endpoint is unauthenticated, meaning the client won't include any
  /// authentication information with the call.
  @override
  _i3.Future<_i4.AuthSuccess> refreshAccessToken({
    required String refreshToken,
  }) => caller.callServerEndpoint<_i4.AuthSuccess>(
    'jwtRefresh',
    'refreshAccessToken',
    {'refreshToken': refreshToken},
    authenticated: false,
  );
}

/// {@category Endpoint}
class EndpointAbonnement extends _i2.EndpointRef {
  EndpointAbonnement(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'abonnement';

  _i3.Future<_i5.Abonnement> souscrire(_i6.TypeAbonnement type) =>
      caller.callServerEndpoint<_i5.Abonnement>(
        'abonnement',
        'souscrire',
        {'type': type},
      );

  _i3.Future<_i5.Abonnement> demarrerEssaiPremium() =>
      caller.callServerEndpoint<_i5.Abonnement>(
        'abonnement',
        'demarrerEssaiPremium',
        {},
      );

  _i3.Future<List<_i5.Abonnement>> historique() =>
      caller.callServerEndpoint<List<_i5.Abonnement>>(
        'abonnement',
        'historique',
        {},
      );
}

/// {@category Endpoint}
class EndpointAcces extends _i2.EndpointRef {
  EndpointAcces(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'acces';

  _i3.Future<_i7.ResultatAcces> verifierAcces(int livreId) =>
      caller.callServerEndpoint<_i7.ResultatAcces>(
        'acces',
        'verifierAcces',
        {'livreId': livreId},
      );
}

/// {@category Endpoint}
class EndpointAmbianceSonore extends _i2.EndpointRef {
  EndpointAmbianceSonore(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'ambianceSonore';

  _i3.Future<_i8.AmbianceSonore> creer(
    String nom,
    String fichierAudio,
  ) => caller.callServerEndpoint<_i8.AmbianceSonore>(
    'ambianceSonore',
    'creer',
    {
      'nom': nom,
      'fichierAudio': fichierAudio,
    },
  );

  _i3.Future<List<_i8.AmbianceSonore>> listerToutes() =>
      caller.callServerEndpoint<List<_i8.AmbianceSonore>>(
        'ambianceSonore',
        'listerToutes',
        {},
      );
}

/// {@category Endpoint}
class EndpointAvis extends _i2.EndpointRef {
  EndpointAvis(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'avis';

  _i3.Future<_i9.Avis> laisser(
    int livreId,
    int note,
    String? commentaire,
  ) => caller.callServerEndpoint<_i9.Avis>(
    'avis',
    'laisser',
    {
      'livreId': livreId,
      'note': note,
      'commentaire': commentaire,
    },
  );

  _i3.Future<_i9.Avis> repondre(
    int avisId,
    String reponse,
  ) => caller.callServerEndpoint<_i9.Avis>(
    'avis',
    'repondre',
    {
      'avisId': avisId,
      'reponse': reponse,
    },
  );
}

/// {@category Endpoint}
class EndpointAvisPublic extends _i2.EndpointRef {
  EndpointAvisPublic(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'avisPublic';

  _i3.Future<List<_i9.Avis>> avisDuLivre(int livreId) =>
      caller.callServerEndpoint<List<_i9.Avis>>(
        'avisPublic',
        'avisDuLivre',
        {'livreId': livreId},
      );
}

/// {@category Endpoint}
class EndpointCategorie extends _i2.EndpointRef {
  EndpointCategorie(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'categorie';

  _i3.Future<_i10.Categorie> creer(String nom) =>
      caller.callServerEndpoint<_i10.Categorie>(
        'categorie',
        'creer',
        {'nom': nom},
      );

  _i3.Future<List<_i10.Categorie>> listerToutes() =>
      caller.callServerEndpoint<List<_i10.Categorie>>(
        'categorie',
        'listerToutes',
        {},
      );
}

/// {@category Endpoint}
class EndpointChangementStatut extends _i2.EndpointRef {
  EndpointChangementStatut(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'changementStatut';

  _i3.Future<_i11.ChangementStatut> proposer(
    int livreId,
    _i12.StatutPrix nouveauStatut,
    String messageAdmin,
  ) => caller.callServerEndpoint<_i11.ChangementStatut>(
    'changementStatut',
    'proposer',
    {
      'livreId': livreId,
      'nouveauStatut': nouveauStatut,
      'messageAdmin': messageAdmin,
    },
  );

  _i3.Future<_i11.ChangementStatut> repondre(
    int changementId,
    bool accepte,
  ) => caller.callServerEndpoint<_i11.ChangementStatut>(
    'changementStatut',
    'repondre',
    {
      'changementId': changementId,
      'accepte': accepte,
    },
  );

  _i3.Future<List<_i11.ChangementStatut>> mesPropositionsEnAttente() =>
      caller.callServerEndpoint<List<_i11.ChangementStatut>>(
        'changementStatut',
        'mesPropositionsEnAttente',
        {},
      );
}

/// {@category Endpoint}
class EndpointConfiguration extends _i2.EndpointRef {
  EndpointConfiguration(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'configuration';

  _i3.Future<_i13.TauxCommission> definirTauxCommission({
    required double tauxPlateforme,
    required double montantParLectureUnique,
    required int seuilLecteursUniquesGratuit,
  }) => caller.callServerEndpoint<_i13.TauxCommission>(
    'configuration',
    'definirTauxCommission',
    {
      'tauxPlateforme': tauxPlateforme,
      'montantParLectureUnique': montantParLectureUnique,
      'seuilLecteursUniquesGratuit': seuilLecteursUniquesGratuit,
    },
  );

  _i3.Future<_i14.TarifAbonnement> definirTarif(
    _i6.TypeAbonnement type,
    double prix,
  ) => caller.callServerEndpoint<_i14.TarifAbonnement>(
    'configuration',
    'definirTarif',
    {
      'type': type,
      'prix': prix,
    },
  );
}

/// {@category Endpoint}
class EndpointDecision extends _i2.EndpointRef {
  EndpointDecision(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'decision';

  _i3.Future<List<_i15.Livre>> listerEnAttente() =>
      caller.callServerEndpoint<List<_i15.Livre>>(
        'decision',
        'listerEnAttente',
        {},
      );

  _i3.Future<_i16.Decision> valider(int decisionId) =>
      caller.callServerEndpoint<_i16.Decision>(
        'decision',
        'valider',
        {'decisionId': decisionId},
      );

  _i3.Future<_i16.Decision> rejeter(int decisionId) =>
      caller.callServerEndpoint<_i16.Decision>(
        'decision',
        'rejeter',
        {'decisionId': decisionId},
      );

  _i3.Future<_i16.Decision> resoumettre(
    int livreId,
    String justification,
  ) => caller.callServerEndpoint<_i16.Decision>(
    'decision',
    'resoumettre',
    {
      'livreId': livreId,
      'justification': justification,
    },
  );
}

/// {@category Endpoint}
class EndpointFavoris extends _i2.EndpointRef {
  EndpointFavoris(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'favoris';

  _i3.Future<_i17.Favoris> ajouter(int livreId) =>
      caller.callServerEndpoint<_i17.Favoris>(
        'favoris',
        'ajouter',
        {'livreId': livreId},
      );

  _i3.Future<void> retirer(int livreId) => caller.callServerEndpoint<void>(
    'favoris',
    'retirer',
    {'livreId': livreId},
  );

  _i3.Future<List<_i17.Favoris>> mesFavoris() =>
      caller.callServerEndpoint<List<_i17.Favoris>>(
        'favoris',
        'mesFavoris',
        {},
      );
}

/// {@category Endpoint}
class EndpointLangue extends _i2.EndpointRef {
  EndpointLangue(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'langue';

  _i3.Future<_i18.Langue> creer(
    String nom,
    String code,
  ) => caller.callServerEndpoint<_i18.Langue>(
    'langue',
    'creer',
    {
      'nom': nom,
      'code': code,
    },
  );

  _i3.Future<List<_i18.Langue>> listerToutes() =>
      caller.callServerEndpoint<List<_i18.Langue>>(
        'langue',
        'listerToutes',
        {},
      );
}

/// {@category Endpoint}
class EndpointLecture extends _i2.EndpointRef {
  EndpointLecture(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'lecture';

  _i3.Future<_i19.Lecture?> enregistrer(
    int livreId,
    int pourcentageLu,
  ) => caller.callServerEndpoint<_i19.Lecture?>(
    'lecture',
    'enregistrer',
    {
      'livreId': livreId,
      'pourcentageLu': pourcentageLu,
    },
  );

  _i3.Future<int> compterLecteursUniquesDuMois(
    int livreId,
    String moisAnnee,
  ) => caller.callServerEndpoint<int>(
    'lecture',
    'compterLecteursUniquesDuMois',
    {
      'livreId': livreId,
      'moisAnnee': moisAnnee,
    },
  );
}

/// {@category Endpoint}
class EndpointLivre extends _i2.EndpointRef {
  EndpointLivre(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'livre';

  _i3.Future<_i15.Livre> soumettre({
    required String titre,
    String? description,
    required int categorieId,
    required int langueId,
    required _i20.ModeAudio modeAudio,
    int? ambianceId,
  }) => caller.callServerEndpoint<_i15.Livre>(
    'livre',
    'soumettre',
    {
      'titre': titre,
      'description': description,
      'categorieId': categorieId,
      'langueId': langueId,
      'modeAudio': modeAudio,
      'ambianceId': ambianceId,
    },
  );

  _i3.Future<List<_i15.Livre>> catalogue({
    int? categorieId,
    int? langueId,
  }) => caller.callServerEndpoint<List<_i15.Livre>>(
    'livre',
    'catalogue',
    {
      'categorieId': categorieId,
      'langueId': langueId,
    },
  );

  _i3.Future<List<_i15.Livre>> monCatalogue() =>
      caller.callServerEndpoint<List<_i15.Livre>>(
        'livre',
        'monCatalogue',
        {},
      );
}

/// {@category Endpoint}
class EndpointNotification extends _i2.EndpointRef {
  EndpointNotification(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'notification';

  _i3.Future<List<_i21.Notification>> mesNotifications() =>
      caller.callServerEndpoint<List<_i21.Notification>>(
        'notification',
        'mesNotifications',
        {},
      );

  _i3.Future<void> marquerCommeLue(int notificationId) =>
      caller.callServerEndpoint<void>(
        'notification',
        'marquerCommeLue',
        {'notificationId': notificationId},
      );

  _i3.Stream<_i21.Notification> ecouter() =>
      caller.callStreamingServerEndpoint<
        _i3.Stream<_i21.Notification>,
        _i21.Notification
      >(
        'notification',
        'ecouter',
        {},
        {},
      );
}

/// {@category Endpoint}
class EndpointPaiement extends _i2.EndpointRef {
  EndpointPaiement(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'paiement';

  _i3.Future<_i22.Paiement> effectuer(
    int abonnementId,
    String mode,
  ) => caller.callServerEndpoint<_i22.Paiement>(
    'paiement',
    'effectuer',
    {
      'abonnementId': abonnementId,
      'mode': mode,
    },
  );
}

/// {@category Endpoint}
class EndpointProfil extends _i2.EndpointRef {
  EndpointProfil(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'profil';

  _i3.Future<_i23.Lecteur> creerProfilLecteur({
    required String nom,
    required String email,
    String? languePreferee,
  }) => caller.callServerEndpoint<_i23.Lecteur>(
    'profil',
    'creerProfilLecteur',
    {
      'nom': nom,
      'email': email,
      'languePreferee': languePreferee,
    },
  );

  _i3.Future<_i23.Auteur> creerProfilAuteur({
    required String nom,
    required String email,
    String? biographie,
    String? languePreferee,
  }) => caller.callServerEndpoint<_i23.Auteur>(
    'profil',
    'creerProfilAuteur',
    {
      'nom': nom,
      'email': email,
      'biographie': biographie,
      'languePreferee': languePreferee,
    },
  );

  _i3.Future<String> obtenirMonRole() => caller.callServerEndpoint<String>(
    'profil',
    'obtenirMonRole',
    {},
  );

  _i3.Future<_i23.SuperAdmin> creerProfilSuperAdminDEV({
    required String nom,
    required String email,
  }) => caller.callServerEndpoint<_i23.SuperAdmin>(
    'profil',
    'creerProfilSuperAdminDEV',
    {
      'nom': nom,
      'email': email,
    },
  );
}

/// {@category Endpoint}
class EndpointStatistiques extends _i2.EndpointRef {
  EndpointStatistiques(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'statistiques';

  _i3.Future<Map<String, int>> evolutionLecteursUniques(int livreId) =>
      caller.callServerEndpoint<Map<String, int>>(
        'statistiques',
        'evolutionLecteursUniques',
        {'livreId': livreId},
      );
}

/// {@category Endpoint}
class EndpointVersement extends _i2.EndpointRef {
  EndpointVersement(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'versement';

  _i3.Future<List<_i24.Versement>> genererPourLeMois(String moisAnnee) =>
      caller.callServerEndpoint<List<_i24.Versement>>(
        'versement',
        'genererPourLeMois',
        {'moisAnnee': moisAnnee},
      );

  _i3.Future<List<_i24.Versement>> mesVersements() =>
      caller.callServerEndpoint<List<_i24.Versement>>(
        'versement',
        'mesVersements',
        {},
      );
}

class Modules {
  Modules(Client client) {
    serverpod_auth_idp = _i1.Caller(client);
    serverpod_auth_core = _i4.Caller(client);
  }

  late final _i1.Caller serverpod_auth_idp;

  late final _i4.Caller serverpod_auth_core;
}

class Client extends _i2.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    @Deprecated(
      'Use authKeyProvider instead. This will be removed in future releases.',
    )
    super.authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i2.MethodCallContext,
      Object,
      StackTrace,
    )?
    onFailedCall,
    Function(_i2.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
         host,
         _i25.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
       ) {
    emailIdp = EndpointEmailIdp(this);
    jwtRefresh = EndpointJwtRefresh(this);
    abonnement = EndpointAbonnement(this);
    acces = EndpointAcces(this);
    ambianceSonore = EndpointAmbianceSonore(this);
    avis = EndpointAvis(this);
    avisPublic = EndpointAvisPublic(this);
    categorie = EndpointCategorie(this);
    changementStatut = EndpointChangementStatut(this);
    configuration = EndpointConfiguration(this);
    decision = EndpointDecision(this);
    favoris = EndpointFavoris(this);
    langue = EndpointLangue(this);
    lecture = EndpointLecture(this);
    livre = EndpointLivre(this);
    notification = EndpointNotification(this);
    paiement = EndpointPaiement(this);
    profil = EndpointProfil(this);
    statistiques = EndpointStatistiques(this);
    versement = EndpointVersement(this);
    modules = Modules(this);
  }

  late final EndpointEmailIdp emailIdp;

  late final EndpointJwtRefresh jwtRefresh;

  late final EndpointAbonnement abonnement;

  late final EndpointAcces acces;

  late final EndpointAmbianceSonore ambianceSonore;

  late final EndpointAvis avis;

  late final EndpointAvisPublic avisPublic;

  late final EndpointCategorie categorie;

  late final EndpointChangementStatut changementStatut;

  late final EndpointConfiguration configuration;

  late final EndpointDecision decision;

  late final EndpointFavoris favoris;

  late final EndpointLangue langue;

  late final EndpointLecture lecture;

  late final EndpointLivre livre;

  late final EndpointNotification notification;

  late final EndpointPaiement paiement;

  late final EndpointProfil profil;

  late final EndpointStatistiques statistiques;

  late final EndpointVersement versement;

  late final Modules modules;

  @override
  Map<String, _i2.EndpointRef> get endpointRefLookup => {
    'emailIdp': emailIdp,
    'jwtRefresh': jwtRefresh,
    'abonnement': abonnement,
    'acces': acces,
    'ambianceSonore': ambianceSonore,
    'avis': avis,
    'avisPublic': avisPublic,
    'categorie': categorie,
    'changementStatut': changementStatut,
    'configuration': configuration,
    'decision': decision,
    'favoris': favoris,
    'langue': langue,
    'lecture': lecture,
    'livre': livre,
    'notification': notification,
    'paiement': paiement,
    'profil': profil,
    'statistiques': statistiques,
    'versement': versement,
  };

  @override
  Map<String, _i2.ModuleEndpointCaller> get moduleLookup => {
    'serverpod_auth_idp': modules.serverpod_auth_idp,
    'serverpod_auth_core': modules.serverpod_auth_core,
  };
}

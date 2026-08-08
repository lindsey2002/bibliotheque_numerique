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
import 'package:serverpod/serverpod.dart' as _i1;
import '../auth/email_idp_endpoint.dart' as _i2;
import '../auth/jwt_refresh_endpoint.dart' as _i3;
import '../endpoints/abonnement_endpoint.dart' as _i4;
import '../endpoints/acces_endpoint.dart' as _i5;
import '../endpoints/ambiancesonore_endpoint.dart' as _i6;
import '../endpoints/avis_endpoint.dart' as _i7;
import '../endpoints/avispublic_endpoint.dart' as _i8;
import '../endpoints/categorie_endpoint.dart' as _i9;
import '../endpoints/changementstatut_endpoint.dart' as _i10;
import '../endpoints/configuration_endpoint.dart' as _i11;
import '../endpoints/decision_endpoint.dart' as _i12;
import '../endpoints/favoris_endpoint.dart' as _i13;
import '../endpoints/langue_endpoint.dart' as _i14;
import '../endpoints/lecture_endpoint.dart' as _i15;
import '../endpoints/livre_endpoint.dart' as _i16;
import '../endpoints/notification_endpoint.dart' as _i17;
import '../endpoints/paiement_endpoint.dart' as _i18;
import '../endpoints/profil_endpoint.dart' as _i19;
import '../endpoints/statistiques_endpoint.dart' as _i20;
import '../endpoints/versement_endpoint.dart' as _i21;
import 'package:bibliotheque_numerique_server/src/generated/typeabonnement.dart'
    as _i22;
import 'package:bibliotheque_numerique_server/src/generated/statutprix.dart'
    as _i23;
import 'package:bibliotheque_numerique_server/src/generated/modeaudio.dart'
    as _i24;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i25;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i26;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'emailIdp': _i2.EmailIdpEndpoint()
        ..initialize(
          server,
          'emailIdp',
          null,
        ),
      'jwtRefresh': _i3.JwtRefreshEndpoint()
        ..initialize(
          server,
          'jwtRefresh',
          null,
        ),
      'abonnement': _i4.AbonnementEndpoint()
        ..initialize(
          server,
          'abonnement',
          null,
        ),
      'acces': _i5.AccesEndpoint()
        ..initialize(
          server,
          'acces',
          null,
        ),
      'ambianceSonore': _i6.AmbianceSonoreEndpoint()
        ..initialize(
          server,
          'ambianceSonore',
          null,
        ),
      'avis': _i7.AvisEndpoint()
        ..initialize(
          server,
          'avis',
          null,
        ),
      'avisPublic': _i8.AvisPublicEndpoint()
        ..initialize(
          server,
          'avisPublic',
          null,
        ),
      'categorie': _i9.CategorieEndpoint()
        ..initialize(
          server,
          'categorie',
          null,
        ),
      'changementStatut': _i10.ChangementStatutEndpoint()
        ..initialize(
          server,
          'changementStatut',
          null,
        ),
      'configuration': _i11.ConfigurationEndpoint()
        ..initialize(
          server,
          'configuration',
          null,
        ),
      'decision': _i12.DecisionEndpoint()
        ..initialize(
          server,
          'decision',
          null,
        ),
      'favoris': _i13.FavorisEndpoint()
        ..initialize(
          server,
          'favoris',
          null,
        ),
      'langue': _i14.LangueEndpoint()
        ..initialize(
          server,
          'langue',
          null,
        ),
      'lecture': _i15.LectureEndpoint()
        ..initialize(
          server,
          'lecture',
          null,
        ),
      'livre': _i16.LivreEndpoint()
        ..initialize(
          server,
          'livre',
          null,
        ),
      'notification': _i17.NotificationEndpoint()
        ..initialize(
          server,
          'notification',
          null,
        ),
      'paiement': _i18.PaiementEndpoint()
        ..initialize(
          server,
          'paiement',
          null,
        ),
      'profil': _i19.ProfilEndpoint()
        ..initialize(
          server,
          'profil',
          null,
        ),
      'statistiques': _i20.StatistiquesEndpoint()
        ..initialize(
          server,
          'statistiques',
          null,
        ),
      'versement': _i21.VersementEndpoint()
        ..initialize(
          server,
          'versement',
          null,
        ),
    };
    connectors['emailIdp'] = _i1.EndpointConnector(
      name: 'emailIdp',
      endpoint: endpoints['emailIdp']!,
      methodConnectors: {
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint).login(
                session,
                email: params['email'],
                password: params['password'],
              ),
        ),
        'startRegistration': _i1.MethodConnector(
          name: 'startRegistration',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startRegistration(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyRegistrationCode': _i1.MethodConnector(
          name: 'verifyRegistrationCode',
          params: {
            'accountRequestId': _i1.ParameterDescription(
              name: 'accountRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyRegistrationCode(
                    session,
                    accountRequestId: params['accountRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishRegistration': _i1.MethodConnector(
          name: 'finishRegistration',
          params: {
            'registrationToken': _i1.ParameterDescription(
              name: 'registrationToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishRegistration(
                    session,
                    registrationToken: params['registrationToken'],
                    password: params['password'],
                  ),
        ),
        'startPasswordReset': _i1.MethodConnector(
          name: 'startPasswordReset',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startPasswordReset(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyPasswordResetCode': _i1.MethodConnector(
          name: 'verifyPasswordResetCode',
          params: {
            'passwordResetRequestId': _i1.ParameterDescription(
              name: 'passwordResetRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyPasswordResetCode(
                    session,
                    passwordResetRequestId: params['passwordResetRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishPasswordReset': _i1.MethodConnector(
          name: 'finishPasswordReset',
          params: {
            'finishPasswordResetToken': _i1.ParameterDescription(
              name: 'finishPasswordResetToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newPassword': _i1.ParameterDescription(
              name: 'newPassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishPasswordReset(
                    session,
                    finishPasswordResetToken:
                        params['finishPasswordResetToken'],
                    newPassword: params['newPassword'],
                  ),
        ),
        'hasAccount': _i1.MethodConnector(
          name: 'hasAccount',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .hasAccount(session),
        ),
      },
    );
    connectors['jwtRefresh'] = _i1.EndpointConnector(
      name: 'jwtRefresh',
      endpoint: endpoints['jwtRefresh']!,
      methodConnectors: {
        'refreshAccessToken': _i1.MethodConnector(
          name: 'refreshAccessToken',
          params: {
            'refreshToken': _i1.ParameterDescription(
              name: 'refreshToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['jwtRefresh'] as _i3.JwtRefreshEndpoint)
                  .refreshAccessToken(
                    session,
                    refreshToken: params['refreshToken'],
                  ),
        ),
      },
    );
    connectors['abonnement'] = _i1.EndpointConnector(
      name: 'abonnement',
      endpoint: endpoints['abonnement']!,
      methodConnectors: {
        'souscrire': _i1.MethodConnector(
          name: 'souscrire',
          params: {
            'type': _i1.ParameterDescription(
              name: 'type',
              type: _i1.getType<_i22.TypeAbonnement>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['abonnement'] as _i4.AbonnementEndpoint).souscrire(
                    session,
                    params['type'],
                  ),
        ),
        'demarrerEssaiPremium': _i1.MethodConnector(
          name: 'demarrerEssaiPremium',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['abonnement'] as _i4.AbonnementEndpoint)
                  .demarrerEssaiPremium(session),
        ),
        'historique': _i1.MethodConnector(
          name: 'historique',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['abonnement'] as _i4.AbonnementEndpoint)
                  .historique(session),
        ),
      },
    );
    connectors['acces'] = _i1.EndpointConnector(
      name: 'acces',
      endpoint: endpoints['acces']!,
      methodConnectors: {
        'verifierAcces': _i1.MethodConnector(
          name: 'verifierAcces',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['acces'] as _i5.AccesEndpoint).verifierAcces(
                    session,
                    params['livreId'],
                  ),
        ),
      },
    );
    connectors['ambianceSonore'] = _i1.EndpointConnector(
      name: 'ambianceSonore',
      endpoint: endpoints['ambianceSonore']!,
      methodConnectors: {
        'creer': _i1.MethodConnector(
          name: 'creer',
          params: {
            'nom': _i1.ParameterDescription(
              name: 'nom',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'fichierAudio': _i1.ParameterDescription(
              name: 'fichierAudio',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['ambianceSonore'] as _i6.AmbianceSonoreEndpoint)
                      .creer(
                        session,
                        params['nom'],
                        params['fichierAudio'],
                      ),
        ),
        'listerToutes': _i1.MethodConnector(
          name: 'listerToutes',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['ambianceSonore'] as _i6.AmbianceSonoreEndpoint)
                      .listerToutes(session),
        ),
      },
    );
    connectors['avis'] = _i1.EndpointConnector(
      name: 'avis',
      endpoint: endpoints['avis']!,
      methodConnectors: {
        'laisser': _i1.MethodConnector(
          name: 'laisser',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'note': _i1.ParameterDescription(
              name: 'note',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'commentaire': _i1.ParameterDescription(
              name: 'commentaire',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['avis'] as _i7.AvisEndpoint).laisser(
                session,
                params['livreId'],
                params['note'],
                params['commentaire'],
              ),
        ),
        'repondre': _i1.MethodConnector(
          name: 'repondre',
          params: {
            'avisId': _i1.ParameterDescription(
              name: 'avisId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'reponse': _i1.ParameterDescription(
              name: 'reponse',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['avis'] as _i7.AvisEndpoint).repondre(
                session,
                params['avisId'],
                params['reponse'],
              ),
        ),
      },
    );
    connectors['avisPublic'] = _i1.EndpointConnector(
      name: 'avisPublic',
      endpoint: endpoints['avisPublic']!,
      methodConnectors: {
        'avisDuLivre': _i1.MethodConnector(
          name: 'avisDuLivre',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['avisPublic'] as _i8.AvisPublicEndpoint)
                  .avisDuLivre(
                    session,
                    params['livreId'],
                  ),
        ),
      },
    );
    connectors['categorie'] = _i1.EndpointConnector(
      name: 'categorie',
      endpoint: endpoints['categorie']!,
      methodConnectors: {
        'creer': _i1.MethodConnector(
          name: 'creer',
          params: {
            'nom': _i1.ParameterDescription(
              name: 'nom',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['categorie'] as _i9.CategorieEndpoint).creer(
                    session,
                    params['nom'],
                  ),
        ),
        'listerToutes': _i1.MethodConnector(
          name: 'listerToutes',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['categorie'] as _i9.CategorieEndpoint)
                  .listerToutes(session),
        ),
      },
    );
    connectors['changementStatut'] = _i1.EndpointConnector(
      name: 'changementStatut',
      endpoint: endpoints['changementStatut']!,
      methodConnectors: {
        'proposer': _i1.MethodConnector(
          name: 'proposer',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'nouveauStatut': _i1.ParameterDescription(
              name: 'nouveauStatut',
              type: _i1.getType<_i23.StatutPrix>(),
              nullable: false,
            ),
            'messageAdmin': _i1.ParameterDescription(
              name: 'messageAdmin',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['changementStatut']
                          as _i10.ChangementStatutEndpoint)
                      .proposer(
                        session,
                        params['livreId'],
                        params['nouveauStatut'],
                        params['messageAdmin'],
                      ),
        ),
        'repondre': _i1.MethodConnector(
          name: 'repondre',
          params: {
            'changementId': _i1.ParameterDescription(
              name: 'changementId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'accepte': _i1.ParameterDescription(
              name: 'accepte',
              type: _i1.getType<bool>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['changementStatut']
                          as _i10.ChangementStatutEndpoint)
                      .repondre(
                        session,
                        params['changementId'],
                        params['accepte'],
                      ),
        ),
        'mesPropositionsEnAttente': _i1.MethodConnector(
          name: 'mesPropositionsEnAttente',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['changementStatut']
                          as _i10.ChangementStatutEndpoint)
                      .mesPropositionsEnAttente(session),
        ),
      },
    );
    connectors['configuration'] = _i1.EndpointConnector(
      name: 'configuration',
      endpoint: endpoints['configuration']!,
      methodConnectors: {
        'definirTauxCommission': _i1.MethodConnector(
          name: 'definirTauxCommission',
          params: {
            'tauxPlateforme': _i1.ParameterDescription(
              name: 'tauxPlateforme',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'montantParLectureUnique': _i1.ParameterDescription(
              name: 'montantParLectureUnique',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'seuilLecteursUniquesGratuit': _i1.ParameterDescription(
              name: 'seuilLecteursUniquesGratuit',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['configuration'] as _i11.ConfigurationEndpoint)
                      .definirTauxCommission(
                        session,
                        tauxPlateforme: params['tauxPlateforme'],
                        montantParLectureUnique:
                            params['montantParLectureUnique'],
                        seuilLecteursUniquesGratuit:
                            params['seuilLecteursUniquesGratuit'],
                      ),
        ),
        'definirTarif': _i1.MethodConnector(
          name: 'definirTarif',
          params: {
            'type': _i1.ParameterDescription(
              name: 'type',
              type: _i1.getType<_i22.TypeAbonnement>(),
              nullable: false,
            ),
            'prix': _i1.ParameterDescription(
              name: 'prix',
              type: _i1.getType<double>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['configuration'] as _i11.ConfigurationEndpoint)
                      .definirTarif(
                        session,
                        params['type'],
                        params['prix'],
                      ),
        ),
      },
    );
    connectors['decision'] = _i1.EndpointConnector(
      name: 'decision',
      endpoint: endpoints['decision']!,
      methodConnectors: {
        'listerEnAttente': _i1.MethodConnector(
          name: 'listerEnAttente',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['decision'] as _i12.DecisionEndpoint)
                  .listerEnAttente(session),
        ),
        'valider': _i1.MethodConnector(
          name: 'valider',
          params: {
            'decisionId': _i1.ParameterDescription(
              name: 'decisionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['decision'] as _i12.DecisionEndpoint).valider(
                    session,
                    params['decisionId'],
                  ),
        ),
        'rejeter': _i1.MethodConnector(
          name: 'rejeter',
          params: {
            'decisionId': _i1.ParameterDescription(
              name: 'decisionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['decision'] as _i12.DecisionEndpoint).rejeter(
                    session,
                    params['decisionId'],
                  ),
        ),
        'resoumettre': _i1.MethodConnector(
          name: 'resoumettre',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'justification': _i1.ParameterDescription(
              name: 'justification',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['decision'] as _i12.DecisionEndpoint).resoumettre(
                    session,
                    params['livreId'],
                    params['justification'],
                  ),
        ),
      },
    );
    connectors['favoris'] = _i1.EndpointConnector(
      name: 'favoris',
      endpoint: endpoints['favoris']!,
      methodConnectors: {
        'ajouter': _i1.MethodConnector(
          name: 'ajouter',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['favoris'] as _i13.FavorisEndpoint).ajouter(
                session,
                params['livreId'],
              ),
        ),
        'retirer': _i1.MethodConnector(
          name: 'retirer',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['favoris'] as _i13.FavorisEndpoint).retirer(
                session,
                params['livreId'],
              ),
        ),
        'mesFavoris': _i1.MethodConnector(
          name: 'mesFavoris',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['favoris'] as _i13.FavorisEndpoint)
                  .mesFavoris(session),
        ),
      },
    );
    connectors['langue'] = _i1.EndpointConnector(
      name: 'langue',
      endpoint: endpoints['langue']!,
      methodConnectors: {
        'creer': _i1.MethodConnector(
          name: 'creer',
          params: {
            'nom': _i1.ParameterDescription(
              name: 'nom',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'code': _i1.ParameterDescription(
              name: 'code',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['langue'] as _i14.LangueEndpoint).creer(
                session,
                params['nom'],
                params['code'],
              ),
        ),
        'listerToutes': _i1.MethodConnector(
          name: 'listerToutes',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['langue'] as _i14.LangueEndpoint)
                  .listerToutes(session),
        ),
      },
    );
    connectors['lecture'] = _i1.EndpointConnector(
      name: 'lecture',
      endpoint: endpoints['lecture']!,
      methodConnectors: {
        'enregistrer': _i1.MethodConnector(
          name: 'enregistrer',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'pourcentageLu': _i1.ParameterDescription(
              name: 'pourcentageLu',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['lecture'] as _i15.LectureEndpoint).enregistrer(
                    session,
                    params['livreId'],
                    params['pourcentageLu'],
                  ),
        ),
        'compterLecteursUniquesDuMois': _i1.MethodConnector(
          name: 'compterLecteursUniquesDuMois',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'moisAnnee': _i1.ParameterDescription(
              name: 'moisAnnee',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['lecture'] as _i15.LectureEndpoint)
                  .compterLecteursUniquesDuMois(
                    session,
                    params['livreId'],
                    params['moisAnnee'],
                  ),
        ),
      },
    );
    connectors['livre'] = _i1.EndpointConnector(
      name: 'livre',
      endpoint: endpoints['livre']!,
      methodConnectors: {
        'soumettre': _i1.MethodConnector(
          name: 'soumettre',
          params: {
            'titre': _i1.ParameterDescription(
              name: 'titre',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'description': _i1.ParameterDescription(
              name: 'description',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'categorieId': _i1.ParameterDescription(
              name: 'categorieId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'langueId': _i1.ParameterDescription(
              name: 'langueId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'modeAudio': _i1.ParameterDescription(
              name: 'modeAudio',
              type: _i1.getType<_i24.ModeAudio>(),
              nullable: false,
            ),
            'ambianceId': _i1.ParameterDescription(
              name: 'ambianceId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['livre'] as _i16.LivreEndpoint).soumettre(
                session,
                titre: params['titre'],
                description: params['description'],
                categorieId: params['categorieId'],
                langueId: params['langueId'],
                modeAudio: params['modeAudio'],
                ambianceId: params['ambianceId'],
              ),
        ),
        'catalogue': _i1.MethodConnector(
          name: 'catalogue',
          params: {
            'categorieId': _i1.ParameterDescription(
              name: 'categorieId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'langueId': _i1.ParameterDescription(
              name: 'langueId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['livre'] as _i16.LivreEndpoint).catalogue(
                session,
                categorieId: params['categorieId'],
                langueId: params['langueId'],
              ),
        ),
        'monCatalogue': _i1.MethodConnector(
          name: 'monCatalogue',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['livre'] as _i16.LivreEndpoint)
                  .monCatalogue(session),
        ),
      },
    );
    connectors['notification'] = _i1.EndpointConnector(
      name: 'notification',
      endpoint: endpoints['notification']!,
      methodConnectors: {
        'mesNotifications': _i1.MethodConnector(
          name: 'mesNotifications',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['notification'] as _i17.NotificationEndpoint)
                      .mesNotifications(session),
        ),
        'marquerCommeLue': _i1.MethodConnector(
          name: 'marquerCommeLue',
          params: {
            'notificationId': _i1.ParameterDescription(
              name: 'notificationId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['notification'] as _i17.NotificationEndpoint)
                      .marquerCommeLue(
                        session,
                        params['notificationId'],
                      ),
        ),
        'ecouter': _i1.MethodStreamConnector(
          name: 'ecouter',
          params: {},
          streamParams: {},
          returnType: _i1.MethodStreamReturnType.streamType,
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
                Map<String, Stream> streamParams,
              ) => (endpoints['notification'] as _i17.NotificationEndpoint)
                  .ecouter(session),
        ),
      },
    );
    connectors['paiement'] = _i1.EndpointConnector(
      name: 'paiement',
      endpoint: endpoints['paiement']!,
      methodConnectors: {
        'effectuer': _i1.MethodConnector(
          name: 'effectuer',
          params: {
            'abonnementId': _i1.ParameterDescription(
              name: 'abonnementId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'mode': _i1.ParameterDescription(
              name: 'mode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['paiement'] as _i18.PaiementEndpoint).effectuer(
                    session,
                    params['abonnementId'],
                    params['mode'],
                  ),
        ),
      },
    );
    connectors['profil'] = _i1.EndpointConnector(
      name: 'profil',
      endpoint: endpoints['profil']!,
      methodConnectors: {
        'creerProfilLecteur': _i1.MethodConnector(
          name: 'creerProfilLecteur',
          params: {
            'nom': _i1.ParameterDescription(
              name: 'nom',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'languePreferee': _i1.ParameterDescription(
              name: 'languePreferee',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['profil'] as _i19.ProfilEndpoint)
                  .creerProfilLecteur(
                    session,
                    nom: params['nom'],
                    email: params['email'],
                    languePreferee: params['languePreferee'],
                  ),
        ),
        'creerProfilAuteur': _i1.MethodConnector(
          name: 'creerProfilAuteur',
          params: {
            'nom': _i1.ParameterDescription(
              name: 'nom',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'biographie': _i1.ParameterDescription(
              name: 'biographie',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'languePreferee': _i1.ParameterDescription(
              name: 'languePreferee',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['profil'] as _i19.ProfilEndpoint)
                  .creerProfilAuteur(
                    session,
                    nom: params['nom'],
                    email: params['email'],
                    biographie: params['biographie'],
                    languePreferee: params['languePreferee'],
                  ),
        ),
        'obtenirMonRole': _i1.MethodConnector(
          name: 'obtenirMonRole',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['profil'] as _i19.ProfilEndpoint)
                  .obtenirMonRole(session),
        ),
      },
    );
    connectors['statistiques'] = _i1.EndpointConnector(
      name: 'statistiques',
      endpoint: endpoints['statistiques']!,
      methodConnectors: {
        'evolutionLecteursUniques': _i1.MethodConnector(
          name: 'evolutionLecteursUniques',
          params: {
            'livreId': _i1.ParameterDescription(
              name: 'livreId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['statistiques'] as _i20.StatistiquesEndpoint)
                      .evolutionLecteursUniques(
                        session,
                        params['livreId'],
                      ),
        ),
      },
    );
    connectors['versement'] = _i1.EndpointConnector(
      name: 'versement',
      endpoint: endpoints['versement']!,
      methodConnectors: {
        'genererPourLeMois': _i1.MethodConnector(
          name: 'genererPourLeMois',
          params: {
            'moisAnnee': _i1.ParameterDescription(
              name: 'moisAnnee',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['versement'] as _i21.VersementEndpoint)
                  .genererPourLeMois(
                    session,
                    params['moisAnnee'],
                  ),
        ),
        'mesVersements': _i1.MethodConnector(
          name: 'mesVersements',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['versement'] as _i21.VersementEndpoint)
                  .mesVersements(session),
        ),
      },
    );
    modules['serverpod_auth_idp'] = _i25.Endpoints()
      ..initializeEndpoints(server);
    modules['serverpod_auth_core'] = _i26.Endpoints()
      ..initializeEndpoints(server);
  }
}

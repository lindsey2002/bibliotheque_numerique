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
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i3;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i4;
import 'abonnement.dart' as _i5;
import 'ambiancesonore.dart' as _i6;
import 'utilisateur.dart' as _i7;
import 'avis.dart' as _i8;
import 'categorie.dart' as _i9;
import 'changementstatut.dart' as _i10;
import 'decision.dart' as _i11;
import 'etatdecision.dart' as _i12;
import 'favoris.dart' as _i13;
import 'langue.dart' as _i14;
import 'lecture.dart' as _i15;
import 'livre.dart' as _i16;
import 'modeaudio.dart' as _i17;
import 'notification.dart' as _i18;
import 'paiement.dart' as _i19;
import 'resultatacces.dart' as _i20;
import 'statutprix.dart' as _i21;
import 'tarifabonnement.dart' as _i22;
import 'tauxcommission.dart' as _i23;
import 'typeabonnement.dart' as _i24;
import 'typedestinataire.dart' as _i25;
import 'versement.dart' as _i26;
import 'package:bibliotheque_numerique_server/src/generated/abonnement.dart'
    as _i27;
import 'package:bibliotheque_numerique_server/src/generated/ambiancesonore.dart'
    as _i28;
import 'package:bibliotheque_numerique_server/src/generated/avis.dart' as _i29;
import 'package:bibliotheque_numerique_server/src/generated/categorie.dart'
    as _i30;
import 'package:bibliotheque_numerique_server/src/generated/changementstatut.dart'
    as _i31;
import 'package:bibliotheque_numerique_server/src/generated/livre.dart' as _i32;
import 'package:bibliotheque_numerique_server/src/generated/favoris.dart'
    as _i33;
import 'package:bibliotheque_numerique_server/src/generated/langue.dart'
    as _i34;
import 'package:bibliotheque_numerique_server/src/generated/notification.dart'
    as _i35;
import 'package:bibliotheque_numerique_server/src/generated/versement.dart'
    as _i36;
export 'abonnement.dart';
export 'ambiancesonore.dart';
export 'avis.dart';
export 'categorie.dart';
export 'changementstatut.dart';
export 'decision.dart';
export 'etatdecision.dart';
export 'favoris.dart';
export 'langue.dart';
export 'lecture.dart';
export 'livre.dart';
export 'modeaudio.dart';
export 'notification.dart';
export 'paiement.dart';
export 'resultatacces.dart';
export 'statutprix.dart';
export 'tarifabonnement.dart';
export 'tauxcommission.dart';
export 'typeabonnement.dart';
export 'typedestinataire.dart';
export 'utilisateur.dart';
export 'versement.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'abonnement',
      dartName: 'Abonnement',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'abonnement_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:TypeAbonnement',
        ),
        _i2.ColumnDefinition(
          name: 'dateDebut',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'dateFin',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'prix',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'essaiPremiumActif',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _i2.ColumnDefinition(
          name: 'dateFinEssaiPremium',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'dateProchainPaiement',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'lecteurId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'abonnement_fk_0',
          columns: ['lecteurId'],
          referenceTable: 'lecteur',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'abonnement_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'abonnement_lecteur_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'lecteurId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'ambiance_sonore',
      dartName: 'AmbianceSonore',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'ambiance_sonore_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'nom',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'fichierAudio',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'ambiance_sonore_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'ambiance_nom_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'nom',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'auteur',
      dartName: 'Auteur',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'auteur_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'nom',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'languePreferee',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'dateCreation',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'authUserId',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _i2.ColumnDefinition(
          name: 'biographie',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'auteur_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'auteur_authuserid_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'authUserId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'avis',
      dartName: 'Avis',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'avis_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'note',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'commentaire',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'dateAvis',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'reponseAuteur',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'dateReponseAuteur',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'lecteurId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'livreId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'avis_fk_0',
          columns: ['lecteurId'],
          referenceTable: 'lecteur',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'avis_fk_1',
          columns: ['livreId'],
          referenceTable: 'livre',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'avis_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'avis_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'lecteurId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'livreId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'categorie',
      dartName: 'Categorie',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'categorie_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'nom',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'categorie_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'categorie_nom_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'nom',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'changement_statut',
      dartName: 'ChangementStatut',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'changement_statut_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'ancienStatut',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:StatutPrix',
        ),
        _i2.ColumnDefinition(
          name: 'nouveauStatut',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:StatutPrix',
        ),
        _i2.ColumnDefinition(
          name: 'messageAdmin',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'reponseAuteur',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'dateProposition',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'dateReponse',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'livreId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'auteurId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'proposeParId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'changement_statut_fk_0',
          columns: ['livreId'],
          referenceTable: 'livre',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'changement_statut_fk_1',
          columns: ['auteurId'],
          referenceTable: 'auteur',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'changement_statut_fk_2',
          columns: ['proposeParId'],
          referenceTable: 'superadmin',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'changement_statut_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'changement_livre_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'livreId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'decision',
      dartName: 'Decision',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'decision_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'etat',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:EtatDecision',
          columnDefault: '\'enAttente\'::text',
        ),
        _i2.ColumnDefinition(
          name: 'justificationAuteur',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'dateDecision',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'livreId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'superAdminId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'decision_fk_0',
          columns: ['livreId'],
          referenceTable: 'livre',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'decision_fk_1',
          columns: ['superAdminId'],
          referenceTable: 'superadmin',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'decision_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'decision_livre_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'livreId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'favoris',
      dartName: 'Favoris',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'favoris_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'dateAjout',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'lecteurId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'livreId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'favoris_fk_0',
          columns: ['lecteurId'],
          referenceTable: 'lecteur',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'favoris_fk_1',
          columns: ['livreId'],
          referenceTable: 'livre',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'favoris_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'favoris_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'lecteurId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'livreId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'langue',
      dartName: 'Langue',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'langue_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'nom',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'code',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'langue_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'langue_nom_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'nom',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'langue_code_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'lecteur',
      dartName: 'Lecteur',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'lecteur_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'nom',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'languePreferee',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'dateCreation',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'authUserId',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _i2.ColumnDefinition(
          name: 'essaiPremiumUtilise',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'lecteur_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'lecteur_authuserid_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'authUserId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'lecture',
      dartName: 'Lecture',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'lecture_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'datePremiereLecture',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'pourcentageLu',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'moisAnnee',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'montantCommission',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'lecteurId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'livreId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'lecture_fk_0',
          columns: ['lecteurId'],
          referenceTable: 'lecteur',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'lecture_fk_1',
          columns: ['livreId'],
          referenceTable: 'livre',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'lecture_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'lecture_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'lecteurId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'livreId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'moisAnnee',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'livre',
      dartName: 'Livre',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'livre_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'titre',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'dateSoumission',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'modeAudio',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ModeAudio',
          columnDefault: '\'aucun\'::text',
        ),
        _i2.ColumnDefinition(
          name: 'statutPrix',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:StatutPrix',
          columnDefault: '\'gratuit\'::text',
        ),
        _i2.ColumnDefinition(
          name: 'auteurId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'categorieId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'langueId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'ambianceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'livre_fk_0',
          columns: ['auteurId'],
          referenceTable: 'auteur',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'livre_fk_1',
          columns: ['categorieId'],
          referenceTable: 'categorie',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'livre_fk_2',
          columns: ['langueId'],
          referenceTable: 'langue',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'livre_fk_3',
          columns: ['ambianceId'],
          referenceTable: 'ambiance_sonore',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'livre_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'livre_auteur_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'auteurId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'livre_categorie_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'categorieId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'notification',
      dartName: 'Notification',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'notification_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'titre',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'message',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'lu',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _i2.ColumnDefinition(
          name: 'dateCreation',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'destinataireType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:TypeDestinataire',
        ),
        _i2.ColumnDefinition(
          name: 'destinataireId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'notification_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'notification_destinataire_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'destinataireType',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'destinataireId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'paiement',
      dartName: 'Paiement',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'paiement_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'montant',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'mode',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'abonnementId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'paiement_fk_0',
          columns: ['abonnementId'],
          referenceTable: 'abonnement',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'paiement_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'paiement_abonnement_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'abonnementId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'superadmin',
      dartName: 'SuperAdmin',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'superadmin_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'nom',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'languePreferee',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'dateCreation',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'authUserId',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _i2.ColumnDefinition(
          name: 'niveauAcces',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'superadmin_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'superadmin_authuserid_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'authUserId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'tarif_abonnement',
      dartName: 'TarifAbonnement',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'tarif_abonnement_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:TypeAbonnement',
        ),
        _i2.ColumnDefinition(
          name: 'prix',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'dateDebut',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'dateFin',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'tarif_abonnement_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'taux_commission',
      dartName: 'TauxCommission',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'taux_commission_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'tauxPlateforme',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'montantParLectureUnique',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'seuilLecteursUniquesGratuit',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'dateDebut',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'dateFin',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'taux_commission_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'versement',
      dartName: 'Versement',
      schema: 'public',
      module: 'bibliotheque_numerique',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'versement_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'mois',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'montantBrut',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'montantNet',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'nbLecteursUniques',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'auteurId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'tauxId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'versement_fk_0',
          columns: ['auteurId'],
          referenceTable: 'auteur',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'versement_fk_1',
          columns: ['tauxId'],
          referenceTable: 'taux_commission',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'versement_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'versement_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'auteurId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'mois',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i4.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i5.Abonnement) {
      return _i5.Abonnement.fromJson(data) as T;
    }
    if (t == _i6.AmbianceSonore) {
      return _i6.AmbianceSonore.fromJson(data) as T;
    }
    if (t == _i7.Auteur) {
      return _i7.Auteur.fromJson(data) as T;
    }
    if (t == _i8.Avis) {
      return _i8.Avis.fromJson(data) as T;
    }
    if (t == _i9.Categorie) {
      return _i9.Categorie.fromJson(data) as T;
    }
    if (t == _i10.ChangementStatut) {
      return _i10.ChangementStatut.fromJson(data) as T;
    }
    if (t == _i11.Decision) {
      return _i11.Decision.fromJson(data) as T;
    }
    if (t == _i12.EtatDecision) {
      return _i12.EtatDecision.fromJson(data) as T;
    }
    if (t == _i13.Favoris) {
      return _i13.Favoris.fromJson(data) as T;
    }
    if (t == _i14.Langue) {
      return _i14.Langue.fromJson(data) as T;
    }
    if (t == _i7.Lecteur) {
      return _i7.Lecteur.fromJson(data) as T;
    }
    if (t == _i15.Lecture) {
      return _i15.Lecture.fromJson(data) as T;
    }
    if (t == _i16.Livre) {
      return _i16.Livre.fromJson(data) as T;
    }
    if (t == _i17.ModeAudio) {
      return _i17.ModeAudio.fromJson(data) as T;
    }
    if (t == _i18.Notification) {
      return _i18.Notification.fromJson(data) as T;
    }
    if (t == _i19.Paiement) {
      return _i19.Paiement.fromJson(data) as T;
    }
    if (t == _i20.ResultatAcces) {
      return _i20.ResultatAcces.fromJson(data) as T;
    }
    if (t == _i21.StatutPrix) {
      return _i21.StatutPrix.fromJson(data) as T;
    }
    if (t == _i7.SuperAdmin) {
      return _i7.SuperAdmin.fromJson(data) as T;
    }
    if (t == _i22.TarifAbonnement) {
      return _i22.TarifAbonnement.fromJson(data) as T;
    }
    if (t == _i23.TauxCommission) {
      return _i23.TauxCommission.fromJson(data) as T;
    }
    if (t == _i24.TypeAbonnement) {
      return _i24.TypeAbonnement.fromJson(data) as T;
    }
    if (t == _i25.TypeDestinataire) {
      return _i25.TypeDestinataire.fromJson(data) as T;
    }
    if (t == _i26.Versement) {
      return _i26.Versement.fromJson(data) as T;
    }
    if (t == _i1.getType<_i5.Abonnement?>()) {
      return (data != null ? _i5.Abonnement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.AmbianceSonore?>()) {
      return (data != null ? _i6.AmbianceSonore.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Auteur?>()) {
      return (data != null ? _i7.Auteur.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Avis?>()) {
      return (data != null ? _i8.Avis.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Categorie?>()) {
      return (data != null ? _i9.Categorie.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.ChangementStatut?>()) {
      return (data != null ? _i10.ChangementStatut.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Decision?>()) {
      return (data != null ? _i11.Decision.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.EtatDecision?>()) {
      return (data != null ? _i12.EtatDecision.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Favoris?>()) {
      return (data != null ? _i13.Favoris.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.Langue?>()) {
      return (data != null ? _i14.Langue.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Lecteur?>()) {
      return (data != null ? _i7.Lecteur.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.Lecture?>()) {
      return (data != null ? _i15.Lecture.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.Livre?>()) {
      return (data != null ? _i16.Livre.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.ModeAudio?>()) {
      return (data != null ? _i17.ModeAudio.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.Notification?>()) {
      return (data != null ? _i18.Notification.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.Paiement?>()) {
      return (data != null ? _i19.Paiement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.ResultatAcces?>()) {
      return (data != null ? _i20.ResultatAcces.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.StatutPrix?>()) {
      return (data != null ? _i21.StatutPrix.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.SuperAdmin?>()) {
      return (data != null ? _i7.SuperAdmin.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.TarifAbonnement?>()) {
      return (data != null ? _i22.TarifAbonnement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.TauxCommission?>()) {
      return (data != null ? _i23.TauxCommission.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.TypeAbonnement?>()) {
      return (data != null ? _i24.TypeAbonnement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.TypeDestinataire?>()) {
      return (data != null ? _i25.TypeDestinataire.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.Versement?>()) {
      return (data != null ? _i26.Versement.fromJson(data) : null) as T;
    }
    if (t == List<_i27.Abonnement>) {
      return (data as List).map((e) => deserialize<_i27.Abonnement>(e)).toList()
          as T;
    }
    if (t == List<_i28.AmbianceSonore>) {
      return (data as List)
              .map((e) => deserialize<_i28.AmbianceSonore>(e))
              .toList()
          as T;
    }
    if (t == List<_i29.Avis>) {
      return (data as List).map((e) => deserialize<_i29.Avis>(e)).toList() as T;
    }
    if (t == List<_i30.Categorie>) {
      return (data as List).map((e) => deserialize<_i30.Categorie>(e)).toList()
          as T;
    }
    if (t == List<_i31.ChangementStatut>) {
      return (data as List)
              .map((e) => deserialize<_i31.ChangementStatut>(e))
              .toList()
          as T;
    }
    if (t == List<_i32.Livre>) {
      return (data as List).map((e) => deserialize<_i32.Livre>(e)).toList()
          as T;
    }
    if (t == List<_i33.Favoris>) {
      return (data as List).map((e) => deserialize<_i33.Favoris>(e)).toList()
          as T;
    }
    if (t == List<_i34.Langue>) {
      return (data as List).map((e) => deserialize<_i34.Langue>(e)).toList()
          as T;
    }
    if (t == List<_i35.Notification>) {
      return (data as List)
              .map((e) => deserialize<_i35.Notification>(e))
              .toList()
          as T;
    }
    if (t == Map<String, int>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<int>(v)),
          )
          as T;
    }
    if (t == List<_i36.Versement>) {
      return (data as List).map((e) => deserialize<_i36.Versement>(e)).toList()
          as T;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i4.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i5.Abonnement => 'Abonnement',
      _i6.AmbianceSonore => 'AmbianceSonore',
      _i7.Auteur => 'Auteur',
      _i8.Avis => 'Avis',
      _i9.Categorie => 'Categorie',
      _i10.ChangementStatut => 'ChangementStatut',
      _i11.Decision => 'Decision',
      _i12.EtatDecision => 'EtatDecision',
      _i13.Favoris => 'Favoris',
      _i14.Langue => 'Langue',
      _i7.Lecteur => 'Lecteur',
      _i15.Lecture => 'Lecture',
      _i16.Livre => 'Livre',
      _i17.ModeAudio => 'ModeAudio',
      _i18.Notification => 'Notification',
      _i19.Paiement => 'Paiement',
      _i20.ResultatAcces => 'ResultatAcces',
      _i21.StatutPrix => 'StatutPrix',
      _i7.SuperAdmin => 'SuperAdmin',
      _i22.TarifAbonnement => 'TarifAbonnement',
      _i23.TauxCommission => 'TauxCommission',
      _i24.TypeAbonnement => 'TypeAbonnement',
      _i25.TypeDestinataire => 'TypeDestinataire',
      _i26.Versement => 'Versement',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'bibliotheque_numerique.',
        '',
      );
    }

    switch (data) {
      case _i5.Abonnement():
        return 'Abonnement';
      case _i6.AmbianceSonore():
        return 'AmbianceSonore';
      case _i7.Auteur():
        return 'Auteur';
      case _i8.Avis():
        return 'Avis';
      case _i9.Categorie():
        return 'Categorie';
      case _i10.ChangementStatut():
        return 'ChangementStatut';
      case _i11.Decision():
        return 'Decision';
      case _i12.EtatDecision():
        return 'EtatDecision';
      case _i13.Favoris():
        return 'Favoris';
      case _i14.Langue():
        return 'Langue';
      case _i7.Lecteur():
        return 'Lecteur';
      case _i15.Lecture():
        return 'Lecture';
      case _i16.Livre():
        return 'Livre';
      case _i17.ModeAudio():
        return 'ModeAudio';
      case _i18.Notification():
        return 'Notification';
      case _i19.Paiement():
        return 'Paiement';
      case _i20.ResultatAcces():
        return 'ResultatAcces';
      case _i21.StatutPrix():
        return 'StatutPrix';
      case _i7.SuperAdmin():
        return 'SuperAdmin';
      case _i22.TarifAbonnement():
        return 'TarifAbonnement';
      case _i23.TauxCommission():
        return 'TauxCommission';
      case _i24.TypeAbonnement():
        return 'TypeAbonnement';
      case _i25.TypeDestinataire():
        return 'TypeDestinataire';
      case _i26.Versement():
        return 'Versement';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i4.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Abonnement') {
      return deserialize<_i5.Abonnement>(data['data']);
    }
    if (dataClassName == 'AmbianceSonore') {
      return deserialize<_i6.AmbianceSonore>(data['data']);
    }
    if (dataClassName == 'Auteur') {
      return deserialize<_i7.Auteur>(data['data']);
    }
    if (dataClassName == 'Avis') {
      return deserialize<_i8.Avis>(data['data']);
    }
    if (dataClassName == 'Categorie') {
      return deserialize<_i9.Categorie>(data['data']);
    }
    if (dataClassName == 'ChangementStatut') {
      return deserialize<_i10.ChangementStatut>(data['data']);
    }
    if (dataClassName == 'Decision') {
      return deserialize<_i11.Decision>(data['data']);
    }
    if (dataClassName == 'EtatDecision') {
      return deserialize<_i12.EtatDecision>(data['data']);
    }
    if (dataClassName == 'Favoris') {
      return deserialize<_i13.Favoris>(data['data']);
    }
    if (dataClassName == 'Langue') {
      return deserialize<_i14.Langue>(data['data']);
    }
    if (dataClassName == 'Lecteur') {
      return deserialize<_i7.Lecteur>(data['data']);
    }
    if (dataClassName == 'Lecture') {
      return deserialize<_i15.Lecture>(data['data']);
    }
    if (dataClassName == 'Livre') {
      return deserialize<_i16.Livre>(data['data']);
    }
    if (dataClassName == 'ModeAudio') {
      return deserialize<_i17.ModeAudio>(data['data']);
    }
    if (dataClassName == 'Notification') {
      return deserialize<_i18.Notification>(data['data']);
    }
    if (dataClassName == 'Paiement') {
      return deserialize<_i19.Paiement>(data['data']);
    }
    if (dataClassName == 'ResultatAcces') {
      return deserialize<_i20.ResultatAcces>(data['data']);
    }
    if (dataClassName == 'StatutPrix') {
      return deserialize<_i21.StatutPrix>(data['data']);
    }
    if (dataClassName == 'SuperAdmin') {
      return deserialize<_i7.SuperAdmin>(data['data']);
    }
    if (dataClassName == 'TarifAbonnement') {
      return deserialize<_i22.TarifAbonnement>(data['data']);
    }
    if (dataClassName == 'TauxCommission') {
      return deserialize<_i23.TauxCommission>(data['data']);
    }
    if (dataClassName == 'TypeAbonnement') {
      return deserialize<_i24.TypeAbonnement>(data['data']);
    }
    if (dataClassName == 'TypeDestinataire') {
      return deserialize<_i25.TypeDestinataire>(data['data']);
    }
    if (dataClassName == 'Versement') {
      return deserialize<_i26.Versement>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i4.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i4.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i5.Abonnement:
        return _i5.Abonnement.t;
      case _i6.AmbianceSonore:
        return _i6.AmbianceSonore.t;
      case _i7.Auteur:
        return _i7.Auteur.t;
      case _i8.Avis:
        return _i8.Avis.t;
      case _i9.Categorie:
        return _i9.Categorie.t;
      case _i10.ChangementStatut:
        return _i10.ChangementStatut.t;
      case _i11.Decision:
        return _i11.Decision.t;
      case _i13.Favoris:
        return _i13.Favoris.t;
      case _i14.Langue:
        return _i14.Langue.t;
      case _i7.Lecteur:
        return _i7.Lecteur.t;
      case _i15.Lecture:
        return _i15.Lecture.t;
      case _i16.Livre:
        return _i16.Livre.t;
      case _i18.Notification:
        return _i18.Notification.t;
      case _i19.Paiement:
        return _i19.Paiement.t;
      case _i7.SuperAdmin:
        return _i7.SuperAdmin.t;
      case _i22.TarifAbonnement:
        return _i22.TarifAbonnement.t;
      case _i23.TauxCommission:
        return _i23.TauxCommission.t;
      case _i26.Versement:
        return _i26.Versement.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'bibliotheque_numerique';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i3.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _i4.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}

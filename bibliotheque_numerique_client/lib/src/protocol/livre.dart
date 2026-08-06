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
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'modeaudio.dart' as _i2;
import 'statutprix.dart' as _i3;

abstract class Livre implements _i1.SerializableModel {
  Livre._({
    this.id,
    required this.titre,
    this.description,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    required this.auteurId,
    required this.categorieId,
    required this.langueId,
    this.ambianceId,
  }) : dateSoumission = dateSoumission ?? DateTime.now(),
       modeAudio = modeAudio ?? _i2.ModeAudio.aucun,
       statutPrix = statutPrix ?? _i3.StatutPrix.gratuit;

  factory Livre({
    int? id,
    required String titre,
    String? description,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    required int auteurId,
    required int categorieId,
    required int langueId,
    int? ambianceId,
  }) = _LivreImpl;

  factory Livre.fromJson(Map<String, dynamic> jsonSerialization) {
    return Livre(
      id: jsonSerialization['id'] as int?,
      titre: jsonSerialization['titre'] as String,
      description: jsonSerialization['description'] as String?,
      dateSoumission: jsonSerialization['dateSoumission'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateSoumission'],
            ),
      modeAudio: jsonSerialization['modeAudio'] == null
          ? null
          : _i2.ModeAudio.fromJson((jsonSerialization['modeAudio'] as String)),
      statutPrix: jsonSerialization['statutPrix'] == null
          ? null
          : _i3.StatutPrix.fromJson(
              (jsonSerialization['statutPrix'] as String),
            ),
      auteurId: jsonSerialization['auteurId'] as int,
      categorieId: jsonSerialization['categorieId'] as int,
      langueId: jsonSerialization['langueId'] as int,
      ambianceId: jsonSerialization['ambianceId'] as int?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String titre;

  String? description;

  DateTime dateSoumission;

  _i2.ModeAudio modeAudio;

  _i3.StatutPrix statutPrix;

  int auteurId;

  int categorieId;

  int langueId;

  int? ambianceId;

  /// Returns a shallow copy of this [Livre]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Livre copyWith({
    int? id,
    String? titre,
    String? description,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    int? auteurId,
    int? categorieId,
    int? langueId,
    int? ambianceId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Livre',
      if (id != null) 'id': id,
      'titre': titre,
      if (description != null) 'description': description,
      'dateSoumission': dateSoumission.toJson(),
      'modeAudio': modeAudio.toJson(),
      'statutPrix': statutPrix.toJson(),
      'auteurId': auteurId,
      'categorieId': categorieId,
      'langueId': langueId,
      if (ambianceId != null) 'ambianceId': ambianceId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LivreImpl extends Livre {
  _LivreImpl({
    int? id,
    required String titre,
    String? description,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    required int auteurId,
    required int categorieId,
    required int langueId,
    int? ambianceId,
  }) : super._(
         id: id,
         titre: titre,
         description: description,
         dateSoumission: dateSoumission,
         modeAudio: modeAudio,
         statutPrix: statutPrix,
         auteurId: auteurId,
         categorieId: categorieId,
         langueId: langueId,
         ambianceId: ambianceId,
       );

  /// Returns a shallow copy of this [Livre]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Livre copyWith({
    Object? id = _Undefined,
    String? titre,
    Object? description = _Undefined,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    int? auteurId,
    int? categorieId,
    int? langueId,
    Object? ambianceId = _Undefined,
  }) {
    return Livre(
      id: id is int? ? id : this.id,
      titre: titre ?? this.titre,
      description: description is String? ? description : this.description,
      dateSoumission: dateSoumission ?? this.dateSoumission,
      modeAudio: modeAudio ?? this.modeAudio,
      statutPrix: statutPrix ?? this.statutPrix,
      auteurId: auteurId ?? this.auteurId,
      categorieId: categorieId ?? this.categorieId,
      langueId: langueId ?? this.langueId,
      ambianceId: ambianceId is int? ? ambianceId : this.ambianceId,
    );
  }
}

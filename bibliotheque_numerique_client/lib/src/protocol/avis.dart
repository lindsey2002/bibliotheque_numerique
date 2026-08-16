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

abstract class Avis implements _i1.SerializableModel {
  Avis._({
    this.id,
    required this.note,
    this.commentaire,
    DateTime? dateAvis,
    this.reponseAuteur,
    this.dateReponseAuteur,
    required this.lecteurId,
    required this.livreId,
  }) : dateAvis = dateAvis ?? DateTime.now();

  factory Avis({
    int? id,
    required int note,
    String? commentaire,
    DateTime? dateAvis,
    String? reponseAuteur,
    DateTime? dateReponseAuteur,
    required int lecteurId,
    required int livreId,
  }) = _AvisImpl;

  factory Avis.fromJson(Map<String, dynamic> jsonSerialization) {
    return Avis(
      id: jsonSerialization['id'] as int?,
      note: jsonSerialization['note'] as int,
      commentaire: jsonSerialization['commentaire'] as String?,
      dateAvis: jsonSerialization['dateAvis'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateAvis']),
      reponseAuteur: jsonSerialization['reponseAuteur'] as String?,
      dateReponseAuteur: jsonSerialization['dateReponseAuteur'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateReponseAuteur'],
            ),
      lecteurId: jsonSerialization['lecteurId'] as int,
      livreId: jsonSerialization['livreId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int note;

  String? commentaire;

  DateTime dateAvis;

  String? reponseAuteur;

  DateTime? dateReponseAuteur;

  int lecteurId;

  int livreId;

  /// Returns a shallow copy of this [Avis]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Avis copyWith({
    int? id,
    int? note,
    String? commentaire,
    DateTime? dateAvis,
    String? reponseAuteur,
    DateTime? dateReponseAuteur,
    int? lecteurId,
    int? livreId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Avis',
      if (id != null) 'id': id,
      'note': note,
      if (commentaire != null) 'commentaire': commentaire,
      'dateAvis': dateAvis.toJson(),
      if (reponseAuteur != null) 'reponseAuteur': reponseAuteur,
      if (dateReponseAuteur != null)
        'dateReponseAuteur': dateReponseAuteur?.toJson(),
      'lecteurId': lecteurId,
      'livreId': livreId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AvisImpl extends Avis {
  _AvisImpl({
    int? id,
    required int note,
    String? commentaire,
    DateTime? dateAvis,
    String? reponseAuteur,
    DateTime? dateReponseAuteur,
    required int lecteurId,
    required int livreId,
  }) : super._(
         id: id,
         note: note,
         commentaire: commentaire,
         dateAvis: dateAvis,
         reponseAuteur: reponseAuteur,
         dateReponseAuteur: dateReponseAuteur,
         lecteurId: lecteurId,
         livreId: livreId,
       );

  /// Returns a shallow copy of this [Avis]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Avis copyWith({
    Object? id = _Undefined,
    int? note,
    Object? commentaire = _Undefined,
    DateTime? dateAvis,
    Object? reponseAuteur = _Undefined,
    Object? dateReponseAuteur = _Undefined,
    int? lecteurId,
    int? livreId,
  }) {
    return Avis(
      id: id is int? ? id : this.id,
      note: note ?? this.note,
      commentaire: commentaire is String? ? commentaire : this.commentaire,
      dateAvis: dateAvis ?? this.dateAvis,
      reponseAuteur: reponseAuteur is String?
          ? reponseAuteur
          : this.reponseAuteur,
      dateReponseAuteur: dateReponseAuteur is DateTime?
          ? dateReponseAuteur
          : this.dateReponseAuteur,
      lecteurId: lecteurId ?? this.lecteurId,
      livreId: livreId ?? this.livreId,
    );
  }
}

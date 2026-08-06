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
import 'statutprix.dart' as _i2;

abstract class ChangementStatut implements _i1.SerializableModel {
  ChangementStatut._({
    this.id,
    required this.ancienStatut,
    required this.nouveauStatut,
    this.messageAdmin,
    this.reponseAuteur,
    DateTime? dateProposition,
    this.dateReponse,
    required this.livreId,
    required this.auteurId,
  }) : dateProposition = dateProposition ?? DateTime.now();

  factory ChangementStatut({
    int? id,
    required _i2.StatutPrix ancienStatut,
    required _i2.StatutPrix nouveauStatut,
    String? messageAdmin,
    bool? reponseAuteur,
    DateTime? dateProposition,
    DateTime? dateReponse,
    required int livreId,
    required int auteurId,
  }) = _ChangementStatutImpl;

  factory ChangementStatut.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChangementStatut(
      id: jsonSerialization['id'] as int?,
      ancienStatut: _i2.StatutPrix.fromJson(
        (jsonSerialization['ancienStatut'] as String),
      ),
      nouveauStatut: _i2.StatutPrix.fromJson(
        (jsonSerialization['nouveauStatut'] as String),
      ),
      messageAdmin: jsonSerialization['messageAdmin'] as String?,
      reponseAuteur: jsonSerialization['reponseAuteur'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['reponseAuteur']),
      dateProposition: jsonSerialization['dateProposition'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateProposition'],
            ),
      dateReponse: jsonSerialization['dateReponse'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateReponse'],
            ),
      livreId: jsonSerialization['livreId'] as int,
      auteurId: jsonSerialization['auteurId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.StatutPrix ancienStatut;

  _i2.StatutPrix nouveauStatut;

  String? messageAdmin;

  bool? reponseAuteur;

  DateTime dateProposition;

  DateTime? dateReponse;

  int livreId;

  int auteurId;

  /// Returns a shallow copy of this [ChangementStatut]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ChangementStatut copyWith({
    int? id,
    _i2.StatutPrix? ancienStatut,
    _i2.StatutPrix? nouveauStatut,
    String? messageAdmin,
    bool? reponseAuteur,
    DateTime? dateProposition,
    DateTime? dateReponse,
    int? livreId,
    int? auteurId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ChangementStatut',
      if (id != null) 'id': id,
      'ancienStatut': ancienStatut.toJson(),
      'nouveauStatut': nouveauStatut.toJson(),
      if (messageAdmin != null) 'messageAdmin': messageAdmin,
      if (reponseAuteur != null) 'reponseAuteur': reponseAuteur,
      'dateProposition': dateProposition.toJson(),
      if (dateReponse != null) 'dateReponse': dateReponse?.toJson(),
      'livreId': livreId,
      'auteurId': auteurId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChangementStatutImpl extends ChangementStatut {
  _ChangementStatutImpl({
    int? id,
    required _i2.StatutPrix ancienStatut,
    required _i2.StatutPrix nouveauStatut,
    String? messageAdmin,
    bool? reponseAuteur,
    DateTime? dateProposition,
    DateTime? dateReponse,
    required int livreId,
    required int auteurId,
  }) : super._(
         id: id,
         ancienStatut: ancienStatut,
         nouveauStatut: nouveauStatut,
         messageAdmin: messageAdmin,
         reponseAuteur: reponseAuteur,
         dateProposition: dateProposition,
         dateReponse: dateReponse,
         livreId: livreId,
         auteurId: auteurId,
       );

  /// Returns a shallow copy of this [ChangementStatut]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ChangementStatut copyWith({
    Object? id = _Undefined,
    _i2.StatutPrix? ancienStatut,
    _i2.StatutPrix? nouveauStatut,
    Object? messageAdmin = _Undefined,
    Object? reponseAuteur = _Undefined,
    DateTime? dateProposition,
    Object? dateReponse = _Undefined,
    int? livreId,
    int? auteurId,
  }) {
    return ChangementStatut(
      id: id is int? ? id : this.id,
      ancienStatut: ancienStatut ?? this.ancienStatut,
      nouveauStatut: nouveauStatut ?? this.nouveauStatut,
      messageAdmin: messageAdmin is String? ? messageAdmin : this.messageAdmin,
      reponseAuteur: reponseAuteur is bool?
          ? reponseAuteur
          : this.reponseAuteur,
      dateProposition: dateProposition ?? this.dateProposition,
      dateReponse: dateReponse is DateTime? ? dateReponse : this.dateReponse,
      livreId: livreId ?? this.livreId,
      auteurId: auteurId ?? this.auteurId,
    );
  }
}

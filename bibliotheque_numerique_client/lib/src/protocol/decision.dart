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
import 'etatdecision.dart' as _i2;

abstract class Decision implements _i1.SerializableModel {
  Decision._({
    this.id,
    _i2.EtatDecision? etat,
    this.justificationAuteur,
    DateTime? dateDecision,
    required this.livreId,
    this.superAdminId,
  }) : etat = etat ?? _i2.EtatDecision.enAttente,
       dateDecision = dateDecision ?? DateTime.now();

  factory Decision({
    int? id,
    _i2.EtatDecision? etat,
    String? justificationAuteur,
    DateTime? dateDecision,
    required int livreId,
    int? superAdminId,
  }) = _DecisionImpl;

  factory Decision.fromJson(Map<String, dynamic> jsonSerialization) {
    return Decision(
      id: jsonSerialization['id'] as int?,
      etat: jsonSerialization['etat'] == null
          ? null
          : _i2.EtatDecision.fromJson((jsonSerialization['etat'] as String)),
      justificationAuteur: jsonSerialization['justificationAuteur'] as String?,
      dateDecision: jsonSerialization['dateDecision'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateDecision'],
            ),
      livreId: jsonSerialization['livreId'] as int,
      superAdminId: jsonSerialization['superAdminId'] as int?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.EtatDecision etat;

  String? justificationAuteur;

  DateTime dateDecision;

  int livreId;

  int? superAdminId;

  /// Returns a shallow copy of this [Decision]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Decision copyWith({
    int? id,
    _i2.EtatDecision? etat,
    String? justificationAuteur,
    DateTime? dateDecision,
    int? livreId,
    int? superAdminId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Decision',
      if (id != null) 'id': id,
      'etat': etat.toJson(),
      if (justificationAuteur != null)
        'justificationAuteur': justificationAuteur,
      'dateDecision': dateDecision.toJson(),
      'livreId': livreId,
      if (superAdminId != null) 'superAdminId': superAdminId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DecisionImpl extends Decision {
  _DecisionImpl({
    int? id,
    _i2.EtatDecision? etat,
    String? justificationAuteur,
    DateTime? dateDecision,
    required int livreId,
    int? superAdminId,
  }) : super._(
         id: id,
         etat: etat,
         justificationAuteur: justificationAuteur,
         dateDecision: dateDecision,
         livreId: livreId,
         superAdminId: superAdminId,
       );

  /// Returns a shallow copy of this [Decision]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Decision copyWith({
    Object? id = _Undefined,
    _i2.EtatDecision? etat,
    Object? justificationAuteur = _Undefined,
    DateTime? dateDecision,
    int? livreId,
    Object? superAdminId = _Undefined,
  }) {
    return Decision(
      id: id is int? ? id : this.id,
      etat: etat ?? this.etat,
      justificationAuteur: justificationAuteur is String?
          ? justificationAuteur
          : this.justificationAuteur,
      dateDecision: dateDecision ?? this.dateDecision,
      livreId: livreId ?? this.livreId,
      superAdminId: superAdminId is int? ? superAdminId : this.superAdminId,
    );
  }
}

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

abstract class Paiement implements _i1.SerializableModel {
  Paiement._({
    this.id,
    required this.montant,
    DateTime? date,
    required this.mode,
    required this.abonnementId,
  }) : date = date ?? DateTime.now();

  factory Paiement({
    int? id,
    required double montant,
    DateTime? date,
    required String mode,
    required int abonnementId,
  }) = _PaiementImpl;

  factory Paiement.fromJson(Map<String, dynamic> jsonSerialization) {
    return Paiement(
      id: jsonSerialization['id'] as int?,
      montant: (jsonSerialization['montant'] as num).toDouble(),
      date: jsonSerialization['date'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      mode: jsonSerialization['mode'] as String,
      abonnementId: jsonSerialization['abonnementId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  double montant;

  DateTime date;

  String mode;

  int abonnementId;

  /// Returns a shallow copy of this [Paiement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Paiement copyWith({
    int? id,
    double? montant,
    DateTime? date,
    String? mode,
    int? abonnementId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Paiement',
      if (id != null) 'id': id,
      'montant': montant,
      'date': date.toJson(),
      'mode': mode,
      'abonnementId': abonnementId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaiementImpl extends Paiement {
  _PaiementImpl({
    int? id,
    required double montant,
    DateTime? date,
    required String mode,
    required int abonnementId,
  }) : super._(
         id: id,
         montant: montant,
         date: date,
         mode: mode,
         abonnementId: abonnementId,
       );

  /// Returns a shallow copy of this [Paiement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Paiement copyWith({
    Object? id = _Undefined,
    double? montant,
    DateTime? date,
    String? mode,
    int? abonnementId,
  }) {
    return Paiement(
      id: id is int? ? id : this.id,
      montant: montant ?? this.montant,
      date: date ?? this.date,
      mode: mode ?? this.mode,
      abonnementId: abonnementId ?? this.abonnementId,
    );
  }
}

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
import 'typeabonnement.dart' as _i2;

abstract class TarifAbonnement implements _i1.SerializableModel {
  TarifAbonnement._({
    this.id,
    required this.type,
    required this.prix,
    DateTime? dateDebut,
    this.dateFin,
  }) : dateDebut = dateDebut ?? DateTime.now();

  factory TarifAbonnement({
    int? id,
    required _i2.TypeAbonnement type,
    required double prix,
    DateTime? dateDebut,
    DateTime? dateFin,
  }) = _TarifAbonnementImpl;

  factory TarifAbonnement.fromJson(Map<String, dynamic> jsonSerialization) {
    return TarifAbonnement(
      id: jsonSerialization['id'] as int?,
      type: _i2.TypeAbonnement.fromJson((jsonSerialization['type'] as String)),
      prix: (jsonSerialization['prix'] as num).toDouble(),
      dateDebut: jsonSerialization['dateDebut'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateDebut']),
      dateFin: jsonSerialization['dateFin'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateFin']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.TypeAbonnement type;

  double prix;

  DateTime dateDebut;

  DateTime? dateFin;

  /// Returns a shallow copy of this [TarifAbonnement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TarifAbonnement copyWith({
    int? id,
    _i2.TypeAbonnement? type,
    double? prix,
    DateTime? dateDebut,
    DateTime? dateFin,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'TarifAbonnement',
      if (id != null) 'id': id,
      'type': type.toJson(),
      'prix': prix,
      'dateDebut': dateDebut.toJson(),
      if (dateFin != null) 'dateFin': dateFin?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TarifAbonnementImpl extends TarifAbonnement {
  _TarifAbonnementImpl({
    int? id,
    required _i2.TypeAbonnement type,
    required double prix,
    DateTime? dateDebut,
    DateTime? dateFin,
  }) : super._(
         id: id,
         type: type,
         prix: prix,
         dateDebut: dateDebut,
         dateFin: dateFin,
       );

  /// Returns a shallow copy of this [TarifAbonnement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TarifAbonnement copyWith({
    Object? id = _Undefined,
    _i2.TypeAbonnement? type,
    double? prix,
    DateTime? dateDebut,
    Object? dateFin = _Undefined,
  }) {
    return TarifAbonnement(
      id: id is int? ? id : this.id,
      type: type ?? this.type,
      prix: prix ?? this.prix,
      dateDebut: dateDebut ?? this.dateDebut,
      dateFin: dateFin is DateTime? ? dateFin : this.dateFin,
    );
  }
}

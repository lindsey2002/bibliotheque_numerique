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

abstract class Abonnement implements _i1.SerializableModel {
  Abonnement._({
    this.id,
    required this.type,
    DateTime? dateDebut,
    this.dateFin,
    required this.prix,
    bool? essaiPremiumActif,
    this.dateFinEssaiPremium,
    required this.lecteurId,
  }) : dateDebut = dateDebut ?? DateTime.now(),
       essaiPremiumActif = essaiPremiumActif ?? false;

  factory Abonnement({
    int? id,
    required _i2.TypeAbonnement type,
    DateTime? dateDebut,
    DateTime? dateFin,
    required double prix,
    bool? essaiPremiumActif,
    DateTime? dateFinEssaiPremium,
    required int lecteurId,
  }) = _AbonnementImpl;

  factory Abonnement.fromJson(Map<String, dynamic> jsonSerialization) {
    return Abonnement(
      id: jsonSerialization['id'] as int?,
      type: _i2.TypeAbonnement.fromJson((jsonSerialization['type'] as String)),
      dateDebut: jsonSerialization['dateDebut'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateDebut']),
      dateFin: jsonSerialization['dateFin'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateFin']),
      prix: (jsonSerialization['prix'] as num).toDouble(),
      essaiPremiumActif: jsonSerialization['essaiPremiumActif'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(
              jsonSerialization['essaiPremiumActif'],
            ),
      dateFinEssaiPremium: jsonSerialization['dateFinEssaiPremium'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateFinEssaiPremium'],
            ),
      lecteurId: jsonSerialization['lecteurId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.TypeAbonnement type;

  DateTime dateDebut;

  DateTime? dateFin;

  double prix;

  bool essaiPremiumActif;

  DateTime? dateFinEssaiPremium;

  int lecteurId;

  /// Returns a shallow copy of this [Abonnement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Abonnement copyWith({
    int? id,
    _i2.TypeAbonnement? type,
    DateTime? dateDebut,
    DateTime? dateFin,
    double? prix,
    bool? essaiPremiumActif,
    DateTime? dateFinEssaiPremium,
    int? lecteurId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Abonnement',
      if (id != null) 'id': id,
      'type': type.toJson(),
      'dateDebut': dateDebut.toJson(),
      if (dateFin != null) 'dateFin': dateFin?.toJson(),
      'prix': prix,
      'essaiPremiumActif': essaiPremiumActif,
      if (dateFinEssaiPremium != null)
        'dateFinEssaiPremium': dateFinEssaiPremium?.toJson(),
      'lecteurId': lecteurId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AbonnementImpl extends Abonnement {
  _AbonnementImpl({
    int? id,
    required _i2.TypeAbonnement type,
    DateTime? dateDebut,
    DateTime? dateFin,
    required double prix,
    bool? essaiPremiumActif,
    DateTime? dateFinEssaiPremium,
    required int lecteurId,
  }) : super._(
         id: id,
         type: type,
         dateDebut: dateDebut,
         dateFin: dateFin,
         prix: prix,
         essaiPremiumActif: essaiPremiumActif,
         dateFinEssaiPremium: dateFinEssaiPremium,
         lecteurId: lecteurId,
       );

  /// Returns a shallow copy of this [Abonnement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Abonnement copyWith({
    Object? id = _Undefined,
    _i2.TypeAbonnement? type,
    DateTime? dateDebut,
    Object? dateFin = _Undefined,
    double? prix,
    bool? essaiPremiumActif,
    Object? dateFinEssaiPremium = _Undefined,
    int? lecteurId,
  }) {
    return Abonnement(
      id: id is int? ? id : this.id,
      type: type ?? this.type,
      dateDebut: dateDebut ?? this.dateDebut,
      dateFin: dateFin is DateTime? ? dateFin : this.dateFin,
      prix: prix ?? this.prix,
      essaiPremiumActif: essaiPremiumActif ?? this.essaiPremiumActif,
      dateFinEssaiPremium: dateFinEssaiPremium is DateTime?
          ? dateFinEssaiPremium
          : this.dateFinEssaiPremium,
      lecteurId: lecteurId ?? this.lecteurId,
    );
  }
}

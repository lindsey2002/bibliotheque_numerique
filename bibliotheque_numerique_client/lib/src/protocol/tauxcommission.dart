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

abstract class TauxCommission implements _i1.SerializableModel {
  TauxCommission._({
    this.id,
    required this.tauxPlateforme,
    required this.montantParLectureUnique,
    required this.seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    this.dateFin,
  }) : dateDebut = dateDebut ?? DateTime.now();

  factory TauxCommission({
    int? id,
    required double tauxPlateforme,
    required double montantParLectureUnique,
    required int seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    DateTime? dateFin,
  }) = _TauxCommissionImpl;

  factory TauxCommission.fromJson(Map<String, dynamic> jsonSerialization) {
    return TauxCommission(
      id: jsonSerialization['id'] as int?,
      tauxPlateforme: (jsonSerialization['tauxPlateforme'] as num).toDouble(),
      montantParLectureUnique:
          (jsonSerialization['montantParLectureUnique'] as num).toDouble(),
      seuilLecteursUniquesGratuit:
          jsonSerialization['seuilLecteursUniquesGratuit'] as int,
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

  double tauxPlateforme;

  double montantParLectureUnique;

  int seuilLecteursUniquesGratuit;

  DateTime dateDebut;

  DateTime? dateFin;

  /// Returns a shallow copy of this [TauxCommission]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TauxCommission copyWith({
    int? id,
    double? tauxPlateforme,
    double? montantParLectureUnique,
    int? seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    DateTime? dateFin,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'TauxCommission',
      if (id != null) 'id': id,
      'tauxPlateforme': tauxPlateforme,
      'montantParLectureUnique': montantParLectureUnique,
      'seuilLecteursUniquesGratuit': seuilLecteursUniquesGratuit,
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

class _TauxCommissionImpl extends TauxCommission {
  _TauxCommissionImpl({
    int? id,
    required double tauxPlateforme,
    required double montantParLectureUnique,
    required int seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    DateTime? dateFin,
  }) : super._(
         id: id,
         tauxPlateforme: tauxPlateforme,
         montantParLectureUnique: montantParLectureUnique,
         seuilLecteursUniquesGratuit: seuilLecteursUniquesGratuit,
         dateDebut: dateDebut,
         dateFin: dateFin,
       );

  /// Returns a shallow copy of this [TauxCommission]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TauxCommission copyWith({
    Object? id = _Undefined,
    double? tauxPlateforme,
    double? montantParLectureUnique,
    int? seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    Object? dateFin = _Undefined,
  }) {
    return TauxCommission(
      id: id is int? ? id : this.id,
      tauxPlateforme: tauxPlateforme ?? this.tauxPlateforme,
      montantParLectureUnique:
          montantParLectureUnique ?? this.montantParLectureUnique,
      seuilLecteursUniquesGratuit:
          seuilLecteursUniquesGratuit ?? this.seuilLecteursUniquesGratuit,
      dateDebut: dateDebut ?? this.dateDebut,
      dateFin: dateFin is DateTime? ? dateFin : this.dateFin,
    );
  }
}

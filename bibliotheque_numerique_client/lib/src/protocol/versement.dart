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

abstract class Versement implements _i1.SerializableModel {
  Versement._({
    this.id,
    required this.mois,
    required this.montantBrut,
    required this.montantNet,
    required this.nbLecteursUniques,
    required this.auteurId,
    required this.tauxId,
  });

  factory Versement({
    int? id,
    required String mois,
    required double montantBrut,
    required double montantNet,
    required int nbLecteursUniques,
    required int auteurId,
    required int tauxId,
  }) = _VersementImpl;

  factory Versement.fromJson(Map<String, dynamic> jsonSerialization) {
    return Versement(
      id: jsonSerialization['id'] as int?,
      mois: jsonSerialization['mois'] as String,
      montantBrut: (jsonSerialization['montantBrut'] as num).toDouble(),
      montantNet: (jsonSerialization['montantNet'] as num).toDouble(),
      nbLecteursUniques: jsonSerialization['nbLecteursUniques'] as int,
      auteurId: jsonSerialization['auteurId'] as int,
      tauxId: jsonSerialization['tauxId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String mois;

  double montantBrut;

  double montantNet;

  int nbLecteursUniques;

  int auteurId;

  int tauxId;

  /// Returns a shallow copy of this [Versement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Versement copyWith({
    int? id,
    String? mois,
    double? montantBrut,
    double? montantNet,
    int? nbLecteursUniques,
    int? auteurId,
    int? tauxId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Versement',
      if (id != null) 'id': id,
      'mois': mois,
      'montantBrut': montantBrut,
      'montantNet': montantNet,
      'nbLecteursUniques': nbLecteursUniques,
      'auteurId': auteurId,
      'tauxId': tauxId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _VersementImpl extends Versement {
  _VersementImpl({
    int? id,
    required String mois,
    required double montantBrut,
    required double montantNet,
    required int nbLecteursUniques,
    required int auteurId,
    required int tauxId,
  }) : super._(
         id: id,
         mois: mois,
         montantBrut: montantBrut,
         montantNet: montantNet,
         nbLecteursUniques: nbLecteursUniques,
         auteurId: auteurId,
         tauxId: tauxId,
       );

  /// Returns a shallow copy of this [Versement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Versement copyWith({
    Object? id = _Undefined,
    String? mois,
    double? montantBrut,
    double? montantNet,
    int? nbLecteursUniques,
    int? auteurId,
    int? tauxId,
  }) {
    return Versement(
      id: id is int? ? id : this.id,
      mois: mois ?? this.mois,
      montantBrut: montantBrut ?? this.montantBrut,
      montantNet: montantNet ?? this.montantNet,
      nbLecteursUniques: nbLecteursUniques ?? this.nbLecteursUniques,
      auteurId: auteurId ?? this.auteurId,
      tauxId: tauxId ?? this.tauxId,
    );
  }
}

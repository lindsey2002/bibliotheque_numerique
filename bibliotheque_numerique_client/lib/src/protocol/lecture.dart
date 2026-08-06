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

abstract class Lecture implements _i1.SerializableModel {
  Lecture._({
    this.id,
    DateTime? datePremiereLecture,
    required this.pourcentageLu,
    required this.moisAnnee,
    this.montantCommission,
    required this.lecteurId,
    required this.livreId,
  }) : datePremiereLecture = datePremiereLecture ?? DateTime.now();

  factory Lecture({
    int? id,
    DateTime? datePremiereLecture,
    required int pourcentageLu,
    required String moisAnnee,
    double? montantCommission,
    required int lecteurId,
    required int livreId,
  }) = _LectureImpl;

  factory Lecture.fromJson(Map<String, dynamic> jsonSerialization) {
    return Lecture(
      id: jsonSerialization['id'] as int?,
      datePremiereLecture: jsonSerialization['datePremiereLecture'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['datePremiereLecture'],
            ),
      pourcentageLu: jsonSerialization['pourcentageLu'] as int,
      moisAnnee: jsonSerialization['moisAnnee'] as String,
      montantCommission: (jsonSerialization['montantCommission'] as num?)
          ?.toDouble(),
      lecteurId: jsonSerialization['lecteurId'] as int,
      livreId: jsonSerialization['livreId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime datePremiereLecture;

  int pourcentageLu;

  String moisAnnee;

  double? montantCommission;

  int lecteurId;

  int livreId;

  /// Returns a shallow copy of this [Lecture]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Lecture copyWith({
    int? id,
    DateTime? datePremiereLecture,
    int? pourcentageLu,
    String? moisAnnee,
    double? montantCommission,
    int? lecteurId,
    int? livreId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Lecture',
      if (id != null) 'id': id,
      'datePremiereLecture': datePremiereLecture.toJson(),
      'pourcentageLu': pourcentageLu,
      'moisAnnee': moisAnnee,
      if (montantCommission != null) 'montantCommission': montantCommission,
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

class _LectureImpl extends Lecture {
  _LectureImpl({
    int? id,
    DateTime? datePremiereLecture,
    required int pourcentageLu,
    required String moisAnnee,
    double? montantCommission,
    required int lecteurId,
    required int livreId,
  }) : super._(
         id: id,
         datePremiereLecture: datePremiereLecture,
         pourcentageLu: pourcentageLu,
         moisAnnee: moisAnnee,
         montantCommission: montantCommission,
         lecteurId: lecteurId,
         livreId: livreId,
       );

  /// Returns a shallow copy of this [Lecture]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Lecture copyWith({
    Object? id = _Undefined,
    DateTime? datePremiereLecture,
    int? pourcentageLu,
    String? moisAnnee,
    Object? montantCommission = _Undefined,
    int? lecteurId,
    int? livreId,
  }) {
    return Lecture(
      id: id is int? ? id : this.id,
      datePremiereLecture: datePremiereLecture ?? this.datePremiereLecture,
      pourcentageLu: pourcentageLu ?? this.pourcentageLu,
      moisAnnee: moisAnnee ?? this.moisAnnee,
      montantCommission: montantCommission is double?
          ? montantCommission
          : this.montantCommission,
      lecteurId: lecteurId ?? this.lecteurId,
      livreId: livreId ?? this.livreId,
    );
  }
}

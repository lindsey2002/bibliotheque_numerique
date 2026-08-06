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

abstract class Favoris implements _i1.SerializableModel {
  Favoris._({
    this.id,
    DateTime? dateAjout,
    required this.lecteurId,
    required this.livreId,
  }) : dateAjout = dateAjout ?? DateTime.now();

  factory Favoris({
    int? id,
    DateTime? dateAjout,
    required int lecteurId,
    required int livreId,
  }) = _FavorisImpl;

  factory Favoris.fromJson(Map<String, dynamic> jsonSerialization) {
    return Favoris(
      id: jsonSerialization['id'] as int?,
      dateAjout: jsonSerialization['dateAjout'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateAjout']),
      lecteurId: jsonSerialization['lecteurId'] as int,
      livreId: jsonSerialization['livreId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime dateAjout;

  int lecteurId;

  int livreId;

  /// Returns a shallow copy of this [Favoris]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Favoris copyWith({
    int? id,
    DateTime? dateAjout,
    int? lecteurId,
    int? livreId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Favoris',
      if (id != null) 'id': id,
      'dateAjout': dateAjout.toJson(),
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

class _FavorisImpl extends Favoris {
  _FavorisImpl({
    int? id,
    DateTime? dateAjout,
    required int lecteurId,
    required int livreId,
  }) : super._(
         id: id,
         dateAjout: dateAjout,
         lecteurId: lecteurId,
         livreId: livreId,
       );

  /// Returns a shallow copy of this [Favoris]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Favoris copyWith({
    Object? id = _Undefined,
    DateTime? dateAjout,
    int? lecteurId,
    int? livreId,
  }) {
    return Favoris(
      id: id is int? ? id : this.id,
      dateAjout: dateAjout ?? this.dateAjout,
      lecteurId: lecteurId ?? this.lecteurId,
      livreId: livreId ?? this.livreId,
    );
  }
}

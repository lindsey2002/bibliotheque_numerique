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

abstract class Langue implements _i1.SerializableModel {
  Langue._({
    this.id,
    required this.nom,
    required this.code,
  });

  factory Langue({
    int? id,
    required String nom,
    required String code,
  }) = _LangueImpl;

  factory Langue.fromJson(Map<String, dynamic> jsonSerialization) {
    return Langue(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      code: jsonSerialization['code'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nom;

  String code;

  /// Returns a shallow copy of this [Langue]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Langue copyWith({
    int? id,
    String? nom,
    String? code,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Langue',
      if (id != null) 'id': id,
      'nom': nom,
      'code': code,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LangueImpl extends Langue {
  _LangueImpl({
    int? id,
    required String nom,
    required String code,
  }) : super._(
         id: id,
         nom: nom,
         code: code,
       );

  /// Returns a shallow copy of this [Langue]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Langue copyWith({
    Object? id = _Undefined,
    String? nom,
    String? code,
  }) {
    return Langue(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      code: code ?? this.code,
    );
  }
}

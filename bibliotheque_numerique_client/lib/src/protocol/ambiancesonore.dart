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

abstract class AmbianceSonore implements _i1.SerializableModel {
  AmbianceSonore._({
    this.id,
    required this.nom,
    required this.fichierAudio,
  });

  factory AmbianceSonore({
    int? id,
    required String nom,
    required String fichierAudio,
  }) = _AmbianceSonoreImpl;

  factory AmbianceSonore.fromJson(Map<String, dynamic> jsonSerialization) {
    return AmbianceSonore(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      fichierAudio: jsonSerialization['fichierAudio'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nom;

  String fichierAudio;

  /// Returns a shallow copy of this [AmbianceSonore]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AmbianceSonore copyWith({
    int? id,
    String? nom,
    String? fichierAudio,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'AmbianceSonore',
      if (id != null) 'id': id,
      'nom': nom,
      'fichierAudio': fichierAudio,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AmbianceSonoreImpl extends AmbianceSonore {
  _AmbianceSonoreImpl({
    int? id,
    required String nom,
    required String fichierAudio,
  }) : super._(
         id: id,
         nom: nom,
         fichierAudio: fichierAudio,
       );

  /// Returns a shallow copy of this [AmbianceSonore]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  AmbianceSonore copyWith({
    Object? id = _Undefined,
    String? nom,
    String? fichierAudio,
  }) {
    return AmbianceSonore(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      fichierAudio: fichierAudio ?? this.fichierAudio,
    );
  }
}

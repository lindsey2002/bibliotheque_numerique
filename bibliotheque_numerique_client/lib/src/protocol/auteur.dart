/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

part of 'utilisateur.dart';

abstract class Auteur extends _i1.Utilisateur implements _i2.SerializableModel {
  Auteur._({
    this.id,
    required super.nom,
    required super.email,
    super.languePreferee,
    super.dateCreation,
    required super.authUserId,
    this.biographie,
  });

  factory Auteur({
    int? id,
    required String nom,
    required String email,
    String? languePreferee,
    DateTime? dateCreation,
    required _i2.UuidValue authUserId,
    String? biographie,
  }) = _AuteurImpl;

  factory Auteur.fromJson(Map<String, dynamic> jsonSerialization) {
    return Auteur(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      email: jsonSerialization['email'] as String,
      languePreferee: jsonSerialization['languePreferee'] as String?,
      dateCreation: jsonSerialization['dateCreation'] == null
          ? null
          : _i2.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateCreation'],
            ),
      authUserId: _i2.UuidValueJsonExtension.fromJson(
        jsonSerialization['authUserId'],
      ),
      biographie: jsonSerialization['biographie'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String? biographie;

  /// Returns a shallow copy of this [Auteur]
  /// with some or all fields replaced by the given arguments.
  @override
  @_i2.useResult
  Auteur copyWith({
    int? id,
    String? nom,
    String? email,
    Object? languePreferee,
    DateTime? dateCreation,
    _i2.UuidValue? authUserId,
    String? biographie,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Auteur',
      if (id != null) 'id': id,
      'nom': nom,
      'email': email,
      if (languePreferee != null) 'languePreferee': languePreferee,
      'dateCreation': dateCreation.toJson(),
      'authUserId': authUserId.toJson(),
      if (biographie != null) 'biographie': biographie,
    };
  }

  @override
  String toString() {
    return _i2.SerializationManager.encode(this);
  }
}

class _AuteurImpl extends Auteur {
  _AuteurImpl({
    int? id,
    required String nom,
    required String email,
    String? languePreferee,
    DateTime? dateCreation,
    required _i2.UuidValue authUserId,
    String? biographie,
  }) : super._(
         id: id,
         nom: nom,
         email: email,
         languePreferee: languePreferee,
         dateCreation: dateCreation,
         authUserId: authUserId,
         biographie: biographie,
       );

  /// Returns a shallow copy of this [Auteur]
  /// with some or all fields replaced by the given arguments.
  @_i2.useResult
  @override
  Auteur copyWith({
    Object? id = _Undefined,
    String? nom,
    String? email,
    Object? languePreferee = _Undefined,
    DateTime? dateCreation,
    _i2.UuidValue? authUserId,
    Object? biographie = _Undefined,
  }) {
    return Auteur(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      email: email ?? this.email,
      languePreferee: languePreferee is String?
          ? languePreferee
          : this.languePreferee,
      dateCreation: dateCreation ?? this.dateCreation,
      authUserId: authUserId ?? this.authUserId,
      biographie: biographie is String? ? biographie : this.biographie,
    );
  }
}

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
import 'typedestinataire.dart' as _i2;

abstract class Notification implements _i1.SerializableModel {
  Notification._({
    this.id,
    required this.titre,
    required this.message,
    bool? lu,
    DateTime? dateCreation,
    required this.destinataireType,
    required this.destinataireId,
  }) : lu = lu ?? false,
       dateCreation = dateCreation ?? DateTime.now();

  factory Notification({
    int? id,
    required String titre,
    required String message,
    bool? lu,
    DateTime? dateCreation,
    required _i2.TypeDestinataire destinataireType,
    required int destinataireId,
  }) = _NotificationImpl;

  factory Notification.fromJson(Map<String, dynamic> jsonSerialization) {
    return Notification(
      id: jsonSerialization['id'] as int?,
      titre: jsonSerialization['titre'] as String,
      message: jsonSerialization['message'] as String,
      lu: jsonSerialization['lu'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['lu']),
      dateCreation: jsonSerialization['dateCreation'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateCreation'],
            ),
      destinataireType: _i2.TypeDestinataire.fromJson(
        (jsonSerialization['destinataireType'] as String),
      ),
      destinataireId: jsonSerialization['destinataireId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String titre;

  String message;

  bool lu;

  DateTime dateCreation;

  _i2.TypeDestinataire destinataireType;

  int destinataireId;

  /// Returns a shallow copy of this [Notification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Notification copyWith({
    int? id,
    String? titre,
    String? message,
    bool? lu,
    DateTime? dateCreation,
    _i2.TypeDestinataire? destinataireType,
    int? destinataireId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Notification',
      if (id != null) 'id': id,
      'titre': titre,
      'message': message,
      'lu': lu,
      'dateCreation': dateCreation.toJson(),
      'destinataireType': destinataireType.toJson(),
      'destinataireId': destinataireId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NotificationImpl extends Notification {
  _NotificationImpl({
    int? id,
    required String titre,
    required String message,
    bool? lu,
    DateTime? dateCreation,
    required _i2.TypeDestinataire destinataireType,
    required int destinataireId,
  }) : super._(
         id: id,
         titre: titre,
         message: message,
         lu: lu,
         dateCreation: dateCreation,
         destinataireType: destinataireType,
         destinataireId: destinataireId,
       );

  /// Returns a shallow copy of this [Notification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Notification copyWith({
    Object? id = _Undefined,
    String? titre,
    String? message,
    bool? lu,
    DateTime? dateCreation,
    _i2.TypeDestinataire? destinataireType,
    int? destinataireId,
  }) {
    return Notification(
      id: id is int? ? id : this.id,
      titre: titre ?? this.titre,
      message: message ?? this.message,
      lu: lu ?? this.lu,
      dateCreation: dateCreation ?? this.dateCreation,
      destinataireType: destinataireType ?? this.destinataireType,
      destinataireId: destinataireId ?? this.destinataireId,
    );
  }
}

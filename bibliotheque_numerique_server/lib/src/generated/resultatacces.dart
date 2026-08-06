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
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ResultatAcces
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  ResultatAcces._({
    required this.statut,
    this.pagesAutorisees,
  });

  factory ResultatAcces({
    required String statut,
    int? pagesAutorisees,
  }) = _ResultatAccesImpl;

  factory ResultatAcces.fromJson(Map<String, dynamic> jsonSerialization) {
    return ResultatAcces(
      statut: jsonSerialization['statut'] as String,
      pagesAutorisees: jsonSerialization['pagesAutorisees'] as int?,
    );
  }

  String statut;

  int? pagesAutorisees;

  /// Returns a shallow copy of this [ResultatAcces]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ResultatAcces copyWith({
    String? statut,
    int? pagesAutorisees,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ResultatAcces',
      'statut': statut,
      if (pagesAutorisees != null) 'pagesAutorisees': pagesAutorisees,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ResultatAcces',
      'statut': statut,
      if (pagesAutorisees != null) 'pagesAutorisees': pagesAutorisees,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ResultatAccesImpl extends ResultatAcces {
  _ResultatAccesImpl({
    required String statut,
    int? pagesAutorisees,
  }) : super._(
         statut: statut,
         pagesAutorisees: pagesAutorisees,
       );

  /// Returns a shallow copy of this [ResultatAcces]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ResultatAcces copyWith({
    String? statut,
    Object? pagesAutorisees = _Undefined,
  }) {
    return ResultatAcces(
      statut: statut ?? this.statut,
      pagesAutorisees: pagesAutorisees is int?
          ? pagesAutorisees
          : this.pagesAutorisees,
    );
  }
}

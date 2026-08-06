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
import 'abonnement.dart' as _i2;
import 'ambiancesonore.dart' as _i3;
import 'utilisateur.dart' as _i4;
import 'avis.dart' as _i5;
import 'categorie.dart' as _i6;
import 'changementstatut.dart' as _i7;
import 'decision.dart' as _i8;
import 'etatdecision.dart' as _i9;
import 'favoris.dart' as _i10;
import 'langue.dart' as _i11;
import 'lecture.dart' as _i12;
import 'livre.dart' as _i13;
import 'modeaudio.dart' as _i14;
import 'paiement.dart' as _i15;
import 'resultatacces.dart' as _i16;
import 'statutprix.dart' as _i17;
import 'tarifabonnement.dart' as _i18;
import 'tauxcommission.dart' as _i19;
import 'typeabonnement.dart' as _i20;
import 'versement.dart' as _i21;
import 'package:bibliotheque_numerique_client/src/protocol/abonnement.dart'
    as _i22;
import 'package:bibliotheque_numerique_client/src/protocol/ambiancesonore.dart'
    as _i23;
import 'package:bibliotheque_numerique_client/src/protocol/avis.dart' as _i24;
import 'package:bibliotheque_numerique_client/src/protocol/categorie.dart'
    as _i25;
import 'package:bibliotheque_numerique_client/src/protocol/changementstatut.dart'
    as _i26;
import 'package:bibliotheque_numerique_client/src/protocol/livre.dart' as _i27;
import 'package:bibliotheque_numerique_client/src/protocol/favoris.dart'
    as _i28;
import 'package:bibliotheque_numerique_client/src/protocol/langue.dart' as _i29;
import 'package:bibliotheque_numerique_client/src/protocol/versement.dart'
    as _i30;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i31;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i32;
export 'abonnement.dart';
export 'ambiancesonore.dart';
export 'avis.dart';
export 'categorie.dart';
export 'changementstatut.dart';
export 'decision.dart';
export 'etatdecision.dart';
export 'favoris.dart';
export 'langue.dart';
export 'lecture.dart';
export 'livre.dart';
export 'modeaudio.dart';
export 'paiement.dart';
export 'resultatacces.dart';
export 'statutprix.dart';
export 'tarifabonnement.dart';
export 'tauxcommission.dart';
export 'typeabonnement.dart';
export 'utilisateur.dart';
export 'versement.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.Abonnement) {
      return _i2.Abonnement.fromJson(data) as T;
    }
    if (t == _i3.AmbianceSonore) {
      return _i3.AmbianceSonore.fromJson(data) as T;
    }
    if (t == _i4.Auteur) {
      return _i4.Auteur.fromJson(data) as T;
    }
    if (t == _i5.Avis) {
      return _i5.Avis.fromJson(data) as T;
    }
    if (t == _i6.Categorie) {
      return _i6.Categorie.fromJson(data) as T;
    }
    if (t == _i7.ChangementStatut) {
      return _i7.ChangementStatut.fromJson(data) as T;
    }
    if (t == _i8.Decision) {
      return _i8.Decision.fromJson(data) as T;
    }
    if (t == _i9.EtatDecision) {
      return _i9.EtatDecision.fromJson(data) as T;
    }
    if (t == _i10.Favoris) {
      return _i10.Favoris.fromJson(data) as T;
    }
    if (t == _i11.Langue) {
      return _i11.Langue.fromJson(data) as T;
    }
    if (t == _i4.Lecteur) {
      return _i4.Lecteur.fromJson(data) as T;
    }
    if (t == _i12.Lecture) {
      return _i12.Lecture.fromJson(data) as T;
    }
    if (t == _i13.Livre) {
      return _i13.Livre.fromJson(data) as T;
    }
    if (t == _i14.ModeAudio) {
      return _i14.ModeAudio.fromJson(data) as T;
    }
    if (t == _i15.Paiement) {
      return _i15.Paiement.fromJson(data) as T;
    }
    if (t == _i16.ResultatAcces) {
      return _i16.ResultatAcces.fromJson(data) as T;
    }
    if (t == _i17.StatutPrix) {
      return _i17.StatutPrix.fromJson(data) as T;
    }
    if (t == _i4.SuperAdmin) {
      return _i4.SuperAdmin.fromJson(data) as T;
    }
    if (t == _i18.TarifAbonnement) {
      return _i18.TarifAbonnement.fromJson(data) as T;
    }
    if (t == _i19.TauxCommission) {
      return _i19.TauxCommission.fromJson(data) as T;
    }
    if (t == _i20.TypeAbonnement) {
      return _i20.TypeAbonnement.fromJson(data) as T;
    }
    if (t == _i21.Versement) {
      return _i21.Versement.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Abonnement?>()) {
      return (data != null ? _i2.Abonnement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.AmbianceSonore?>()) {
      return (data != null ? _i3.AmbianceSonore.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Auteur?>()) {
      return (data != null ? _i4.Auteur.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Avis?>()) {
      return (data != null ? _i5.Avis.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Categorie?>()) {
      return (data != null ? _i6.Categorie.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.ChangementStatut?>()) {
      return (data != null ? _i7.ChangementStatut.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Decision?>()) {
      return (data != null ? _i8.Decision.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.EtatDecision?>()) {
      return (data != null ? _i9.EtatDecision.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Favoris?>()) {
      return (data != null ? _i10.Favoris.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Langue?>()) {
      return (data != null ? _i11.Langue.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Lecteur?>()) {
      return (data != null ? _i4.Lecteur.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.Lecture?>()) {
      return (data != null ? _i12.Lecture.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Livre?>()) {
      return (data != null ? _i13.Livre.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.ModeAudio?>()) {
      return (data != null ? _i14.ModeAudio.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.Paiement?>()) {
      return (data != null ? _i15.Paiement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.ResultatAcces?>()) {
      return (data != null ? _i16.ResultatAcces.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.StatutPrix?>()) {
      return (data != null ? _i17.StatutPrix.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.SuperAdmin?>()) {
      return (data != null ? _i4.SuperAdmin.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.TarifAbonnement?>()) {
      return (data != null ? _i18.TarifAbonnement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.TauxCommission?>()) {
      return (data != null ? _i19.TauxCommission.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.TypeAbonnement?>()) {
      return (data != null ? _i20.TypeAbonnement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.Versement?>()) {
      return (data != null ? _i21.Versement.fromJson(data) : null) as T;
    }
    if (t == List<_i22.Abonnement>) {
      return (data as List).map((e) => deserialize<_i22.Abonnement>(e)).toList()
          as T;
    }
    if (t == List<_i23.AmbianceSonore>) {
      return (data as List)
              .map((e) => deserialize<_i23.AmbianceSonore>(e))
              .toList()
          as T;
    }
    if (t == List<_i24.Avis>) {
      return (data as List).map((e) => deserialize<_i24.Avis>(e)).toList() as T;
    }
    if (t == List<_i25.Categorie>) {
      return (data as List).map((e) => deserialize<_i25.Categorie>(e)).toList()
          as T;
    }
    if (t == List<_i26.ChangementStatut>) {
      return (data as List)
              .map((e) => deserialize<_i26.ChangementStatut>(e))
              .toList()
          as T;
    }
    if (t == List<_i27.Livre>) {
      return (data as List).map((e) => deserialize<_i27.Livre>(e)).toList()
          as T;
    }
    if (t == List<_i28.Favoris>) {
      return (data as List).map((e) => deserialize<_i28.Favoris>(e)).toList()
          as T;
    }
    if (t == List<_i29.Langue>) {
      return (data as List).map((e) => deserialize<_i29.Langue>(e)).toList()
          as T;
    }
    if (t == Map<String, int>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<int>(v)),
          )
          as T;
    }
    if (t == List<_i30.Versement>) {
      return (data as List).map((e) => deserialize<_i30.Versement>(e)).toList()
          as T;
    }
    try {
      return _i31.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i32.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.Abonnement => 'Abonnement',
      _i3.AmbianceSonore => 'AmbianceSonore',
      _i4.Auteur => 'Auteur',
      _i5.Avis => 'Avis',
      _i6.Categorie => 'Categorie',
      _i7.ChangementStatut => 'ChangementStatut',
      _i8.Decision => 'Decision',
      _i9.EtatDecision => 'EtatDecision',
      _i10.Favoris => 'Favoris',
      _i11.Langue => 'Langue',
      _i4.Lecteur => 'Lecteur',
      _i12.Lecture => 'Lecture',
      _i13.Livre => 'Livre',
      _i14.ModeAudio => 'ModeAudio',
      _i15.Paiement => 'Paiement',
      _i16.ResultatAcces => 'ResultatAcces',
      _i17.StatutPrix => 'StatutPrix',
      _i4.SuperAdmin => 'SuperAdmin',
      _i18.TarifAbonnement => 'TarifAbonnement',
      _i19.TauxCommission => 'TauxCommission',
      _i20.TypeAbonnement => 'TypeAbonnement',
      _i21.Versement => 'Versement',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'bibliotheque_numerique.',
        '',
      );
    }

    switch (data) {
      case _i2.Abonnement():
        return 'Abonnement';
      case _i3.AmbianceSonore():
        return 'AmbianceSonore';
      case _i4.Auteur():
        return 'Auteur';
      case _i5.Avis():
        return 'Avis';
      case _i6.Categorie():
        return 'Categorie';
      case _i7.ChangementStatut():
        return 'ChangementStatut';
      case _i8.Decision():
        return 'Decision';
      case _i9.EtatDecision():
        return 'EtatDecision';
      case _i10.Favoris():
        return 'Favoris';
      case _i11.Langue():
        return 'Langue';
      case _i4.Lecteur():
        return 'Lecteur';
      case _i12.Lecture():
        return 'Lecture';
      case _i13.Livre():
        return 'Livre';
      case _i14.ModeAudio():
        return 'ModeAudio';
      case _i15.Paiement():
        return 'Paiement';
      case _i16.ResultatAcces():
        return 'ResultatAcces';
      case _i17.StatutPrix():
        return 'StatutPrix';
      case _i4.SuperAdmin():
        return 'SuperAdmin';
      case _i18.TarifAbonnement():
        return 'TarifAbonnement';
      case _i19.TauxCommission():
        return 'TauxCommission';
      case _i20.TypeAbonnement():
        return 'TypeAbonnement';
      case _i21.Versement():
        return 'Versement';
    }
    className = _i31.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i32.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Abonnement') {
      return deserialize<_i2.Abonnement>(data['data']);
    }
    if (dataClassName == 'AmbianceSonore') {
      return deserialize<_i3.AmbianceSonore>(data['data']);
    }
    if (dataClassName == 'Auteur') {
      return deserialize<_i4.Auteur>(data['data']);
    }
    if (dataClassName == 'Avis') {
      return deserialize<_i5.Avis>(data['data']);
    }
    if (dataClassName == 'Categorie') {
      return deserialize<_i6.Categorie>(data['data']);
    }
    if (dataClassName == 'ChangementStatut') {
      return deserialize<_i7.ChangementStatut>(data['data']);
    }
    if (dataClassName == 'Decision') {
      return deserialize<_i8.Decision>(data['data']);
    }
    if (dataClassName == 'EtatDecision') {
      return deserialize<_i9.EtatDecision>(data['data']);
    }
    if (dataClassName == 'Favoris') {
      return deserialize<_i10.Favoris>(data['data']);
    }
    if (dataClassName == 'Langue') {
      return deserialize<_i11.Langue>(data['data']);
    }
    if (dataClassName == 'Lecteur') {
      return deserialize<_i4.Lecteur>(data['data']);
    }
    if (dataClassName == 'Lecture') {
      return deserialize<_i12.Lecture>(data['data']);
    }
    if (dataClassName == 'Livre') {
      return deserialize<_i13.Livre>(data['data']);
    }
    if (dataClassName == 'ModeAudio') {
      return deserialize<_i14.ModeAudio>(data['data']);
    }
    if (dataClassName == 'Paiement') {
      return deserialize<_i15.Paiement>(data['data']);
    }
    if (dataClassName == 'ResultatAcces') {
      return deserialize<_i16.ResultatAcces>(data['data']);
    }
    if (dataClassName == 'StatutPrix') {
      return deserialize<_i17.StatutPrix>(data['data']);
    }
    if (dataClassName == 'SuperAdmin') {
      return deserialize<_i4.SuperAdmin>(data['data']);
    }
    if (dataClassName == 'TarifAbonnement') {
      return deserialize<_i18.TarifAbonnement>(data['data']);
    }
    if (dataClassName == 'TauxCommission') {
      return deserialize<_i19.TauxCommission>(data['data']);
    }
    if (dataClassName == 'TypeAbonnement') {
      return deserialize<_i20.TypeAbonnement>(data['data']);
    }
    if (dataClassName == 'Versement') {
      return deserialize<_i21.Versement>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i31.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i32.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i31.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _i32.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}

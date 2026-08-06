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

abstract class Lecteur extends _i1.Utilisateur
    implements _i2.TableRow<int?>, _i2.ProtocolSerialization {
  Lecteur._({
    this.id,
    required super.nom,
    required super.email,
    super.languePreferee,
    super.dateCreation,
    required super.authUserId,
    bool? essaiPremiumUtilise,
  }) : essaiPremiumUtilise = essaiPremiumUtilise ?? false;

  factory Lecteur({
    int? id,
    required String nom,
    required String email,
    String? languePreferee,
    DateTime? dateCreation,
    required _i2.UuidValue authUserId,
    bool? essaiPremiumUtilise,
  }) = _LecteurImpl;

  factory Lecteur.fromJson(Map<String, dynamic> jsonSerialization) {
    return Lecteur(
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
      essaiPremiumUtilise: jsonSerialization['essaiPremiumUtilise'] == null
          ? null
          : _i2.BoolJsonExtension.fromJson(
              jsonSerialization['essaiPremiumUtilise'],
            ),
    );
  }

  static final t = LecteurTable();

  static const db = LecteurRepository._();

  @override
  int? id;

  bool essaiPremiumUtilise;

  @override
  _i2.Table<int?> get table => t;

  /// Returns a shallow copy of this [Lecteur]
  /// with some or all fields replaced by the given arguments.
  @override
  @_i2.useResult
  Lecteur copyWith({
    int? id,
    String? nom,
    String? email,
    Object? languePreferee,
    DateTime? dateCreation,
    _i2.UuidValue? authUserId,
    bool? essaiPremiumUtilise,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Lecteur',
      if (id != null) 'id': id,
      'nom': nom,
      'email': email,
      if (languePreferee != null) 'languePreferee': languePreferee,
      'dateCreation': dateCreation.toJson(),
      'authUserId': authUserId.toJson(),
      'essaiPremiumUtilise': essaiPremiumUtilise,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Lecteur',
      if (id != null) 'id': id,
      'nom': nom,
      'email': email,
      if (languePreferee != null) 'languePreferee': languePreferee,
      'dateCreation': dateCreation.toJson(),
      'authUserId': authUserId.toJson(),
      'essaiPremiumUtilise': essaiPremiumUtilise,
    };
  }

  static LecteurInclude include() {
    return LecteurInclude._();
  }

  static LecteurIncludeList includeList({
    _i2.WhereExpressionBuilder<LecteurTable>? where,
    int? limit,
    int? offset,
    _i2.OrderByBuilder<LecteurTable>? orderBy,
    bool orderDescending = false,
    _i2.OrderByListBuilder<LecteurTable>? orderByList,
    LecteurInclude? include,
  }) {
    return LecteurIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Lecteur.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Lecteur.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i2.SerializationManager.encode(this);
  }
}

class _LecteurImpl extends Lecteur {
  _LecteurImpl({
    int? id,
    required String nom,
    required String email,
    String? languePreferee,
    DateTime? dateCreation,
    required _i2.UuidValue authUserId,
    bool? essaiPremiumUtilise,
  }) : super._(
         id: id,
         nom: nom,
         email: email,
         languePreferee: languePreferee,
         dateCreation: dateCreation,
         authUserId: authUserId,
         essaiPremiumUtilise: essaiPremiumUtilise,
       );

  /// Returns a shallow copy of this [Lecteur]
  /// with some or all fields replaced by the given arguments.
  @_i2.useResult
  @override
  Lecteur copyWith({
    Object? id = _Undefined,
    String? nom,
    String? email,
    Object? languePreferee = _Undefined,
    DateTime? dateCreation,
    _i2.UuidValue? authUserId,
    bool? essaiPremiumUtilise,
  }) {
    return Lecteur(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      email: email ?? this.email,
      languePreferee: languePreferee is String?
          ? languePreferee
          : this.languePreferee,
      dateCreation: dateCreation ?? this.dateCreation,
      authUserId: authUserId ?? this.authUserId,
      essaiPremiumUtilise: essaiPremiumUtilise ?? this.essaiPremiumUtilise,
    );
  }
}

class LecteurUpdateTable extends _i2.UpdateTable<LecteurTable> {
  LecteurUpdateTable(super.table);

  _i2.ColumnValue<String, String> nom(String value) => _i2.ColumnValue(
    table.nom,
    value,
  );

  _i2.ColumnValue<String, String> email(String value) => _i2.ColumnValue(
    table.email,
    value,
  );

  _i2.ColumnValue<String, String> languePreferee(String? value) =>
      _i2.ColumnValue(
        table.languePreferee,
        value,
      );

  _i2.ColumnValue<DateTime, DateTime> dateCreation(DateTime value) =>
      _i2.ColumnValue(
        table.dateCreation,
        value,
      );

  _i2.ColumnValue<_i2.UuidValue, _i2.UuidValue> authUserId(
    _i2.UuidValue value,
  ) => _i2.ColumnValue(
    table.authUserId,
    value,
  );

  _i2.ColumnValue<bool, bool> essaiPremiumUtilise(bool value) =>
      _i2.ColumnValue(
        table.essaiPremiumUtilise,
        value,
      );
}

class LecteurTable extends _i2.Table<int?> {
  LecteurTable({super.tableRelation}) : super(tableName: 'lecteur') {
    updateTable = LecteurUpdateTable(this);
    nom = _i2.ColumnString(
      'nom',
      this,
    );
    email = _i2.ColumnString(
      'email',
      this,
    );
    languePreferee = _i2.ColumnString(
      'languePreferee',
      this,
    );
    dateCreation = _i2.ColumnDateTime(
      'dateCreation',
      this,
      hasDefault: true,
    );
    authUserId = _i2.ColumnUuid(
      'authUserId',
      this,
    );
    essaiPremiumUtilise = _i2.ColumnBool(
      'essaiPremiumUtilise',
      this,
      hasDefault: true,
    );
  }

  late final LecteurUpdateTable updateTable;

  late final _i2.ColumnString nom;

  late final _i2.ColumnString email;

  late final _i2.ColumnString languePreferee;

  late final _i2.ColumnDateTime dateCreation;

  late final _i2.ColumnUuid authUserId;

  late final _i2.ColumnBool essaiPremiumUtilise;

  @override
  List<_i2.Column> get columns => [
    id,
    nom,
    email,
    languePreferee,
    dateCreation,
    authUserId,
    essaiPremiumUtilise,
  ];
}

class LecteurInclude extends _i2.IncludeObject {
  LecteurInclude._();

  @override
  Map<String, _i2.Include?> get includes => {};

  @override
  _i2.Table<int?> get table => Lecteur.t;
}

class LecteurIncludeList extends _i2.IncludeList {
  LecteurIncludeList._({
    _i2.WhereExpressionBuilder<LecteurTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Lecteur.t);
  }

  @override
  Map<String, _i2.Include?> get includes => include?.includes ?? {};

  @override
  _i2.Table<int?> get table => Lecteur.t;
}

class LecteurRepository {
  const LecteurRepository._();

  /// Returns a list of [Lecteur]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Lecteur>> find(
    _i2.DatabaseSession session, {
    _i2.WhereExpressionBuilder<LecteurTable>? where,
    int? limit,
    int? offset,
    _i2.OrderByBuilder<LecteurTable>? orderBy,
    bool orderDescending = false,
    _i2.OrderByListBuilder<LecteurTable>? orderByList,
    _i2.Transaction? transaction,
    _i2.LockMode? lockMode,
    _i2.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Lecteur>(
      where: where?.call(Lecteur.t),
      orderBy: orderBy?.call(Lecteur.t),
      orderByList: orderByList?.call(Lecteur.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Lecteur] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Lecteur?> findFirstRow(
    _i2.DatabaseSession session, {
    _i2.WhereExpressionBuilder<LecteurTable>? where,
    int? offset,
    _i2.OrderByBuilder<LecteurTable>? orderBy,
    bool orderDescending = false,
    _i2.OrderByListBuilder<LecteurTable>? orderByList,
    _i2.Transaction? transaction,
    _i2.LockMode? lockMode,
    _i2.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Lecteur>(
      where: where?.call(Lecteur.t),
      orderBy: orderBy?.call(Lecteur.t),
      orderByList: orderByList?.call(Lecteur.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Lecteur] by its [id] or null if no such row exists.
  Future<Lecteur?> findById(
    _i2.DatabaseSession session,
    int id, {
    _i2.Transaction? transaction,
    _i2.LockMode? lockMode,
    _i2.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Lecteur>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Lecteur]s in the list and returns the inserted rows.
  ///
  /// The returned [Lecteur]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Lecteur>> insert(
    _i2.DatabaseSession session,
    List<Lecteur> rows, {
    _i2.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Lecteur>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Lecteur] and returns the inserted row.
  ///
  /// The returned [Lecteur] will have its `id` field set.
  Future<Lecteur> insertRow(
    _i2.DatabaseSession session,
    Lecteur row, {
    _i2.Transaction? transaction,
  }) async {
    return session.db.insertRow<Lecteur>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Lecteur]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Lecteur>> update(
    _i2.DatabaseSession session,
    List<Lecteur> rows, {
    _i2.ColumnSelections<LecteurTable>? columns,
    _i2.Transaction? transaction,
  }) async {
    return session.db.update<Lecteur>(
      rows,
      columns: columns?.call(Lecteur.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Lecteur]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Lecteur> updateRow(
    _i2.DatabaseSession session,
    Lecteur row, {
    _i2.ColumnSelections<LecteurTable>? columns,
    _i2.Transaction? transaction,
  }) async {
    return session.db.updateRow<Lecteur>(
      row,
      columns: columns?.call(Lecteur.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Lecteur] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Lecteur?> updateById(
    _i2.DatabaseSession session,
    int id, {
    required _i2.ColumnValueListBuilder<LecteurUpdateTable> columnValues,
    _i2.Transaction? transaction,
  }) async {
    return session.db.updateById<Lecteur>(
      id,
      columnValues: columnValues(Lecteur.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Lecteur]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Lecteur>> updateWhere(
    _i2.DatabaseSession session, {
    required _i2.ColumnValueListBuilder<LecteurUpdateTable> columnValues,
    required _i2.WhereExpressionBuilder<LecteurTable> where,
    int? limit,
    int? offset,
    _i2.OrderByBuilder<LecteurTable>? orderBy,
    _i2.OrderByListBuilder<LecteurTable>? orderByList,
    bool orderDescending = false,
    _i2.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Lecteur>(
      columnValues: columnValues(Lecteur.t.updateTable),
      where: where(Lecteur.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Lecteur.t),
      orderByList: orderByList?.call(Lecteur.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Lecteur]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Lecteur>> delete(
    _i2.DatabaseSession session,
    List<Lecteur> rows, {
    _i2.Transaction? transaction,
  }) async {
    return session.db.delete<Lecteur>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Lecteur].
  Future<Lecteur> deleteRow(
    _i2.DatabaseSession session,
    Lecteur row, {
    _i2.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Lecteur>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Lecteur>> deleteWhere(
    _i2.DatabaseSession session, {
    required _i2.WhereExpressionBuilder<LecteurTable> where,
    _i2.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Lecteur>(
      where: where(Lecteur.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i2.DatabaseSession session, {
    _i2.WhereExpressionBuilder<LecteurTable>? where,
    int? limit,
    _i2.Transaction? transaction,
  }) async {
    return session.db.count<Lecteur>(
      where: where?.call(Lecteur.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Lecteur] rows matching the [where] expression.
  Future<void> lockRows(
    _i2.DatabaseSession session, {
    required _i2.WhereExpressionBuilder<LecteurTable> where,
    required _i2.LockMode lockMode,
    required _i2.Transaction transaction,
    _i2.LockBehavior lockBehavior = _i2.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Lecteur>(
      where: where(Lecteur.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

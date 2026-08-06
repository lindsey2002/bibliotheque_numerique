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

abstract class SuperAdmin extends _i1.Utilisateur
    implements _i2.TableRow<int?>, _i2.ProtocolSerialization {
  SuperAdmin._({
    this.id,
    required super.nom,
    required super.email,
    super.languePreferee,
    super.dateCreation,
    required super.authUserId,
    this.niveauAcces,
  });

  factory SuperAdmin({
    int? id,
    required String nom,
    required String email,
    String? languePreferee,
    DateTime? dateCreation,
    required _i2.UuidValue authUserId,
    String? niveauAcces,
  }) = _SuperAdminImpl;

  factory SuperAdmin.fromJson(Map<String, dynamic> jsonSerialization) {
    return SuperAdmin(
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
      niveauAcces: jsonSerialization['niveauAcces'] as String?,
    );
  }

  static final t = SuperAdminTable();

  static const db = SuperAdminRepository._();

  @override
  int? id;

  String? niveauAcces;

  @override
  _i2.Table<int?> get table => t;

  /// Returns a shallow copy of this [SuperAdmin]
  /// with some or all fields replaced by the given arguments.
  @override
  @_i2.useResult
  SuperAdmin copyWith({
    int? id,
    String? nom,
    String? email,
    Object? languePreferee,
    DateTime? dateCreation,
    _i2.UuidValue? authUserId,
    String? niveauAcces,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SuperAdmin',
      if (id != null) 'id': id,
      'nom': nom,
      'email': email,
      if (languePreferee != null) 'languePreferee': languePreferee,
      'dateCreation': dateCreation.toJson(),
      'authUserId': authUserId.toJson(),
      if (niveauAcces != null) 'niveauAcces': niveauAcces,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SuperAdmin',
      if (id != null) 'id': id,
      'nom': nom,
      'email': email,
      if (languePreferee != null) 'languePreferee': languePreferee,
      'dateCreation': dateCreation.toJson(),
      'authUserId': authUserId.toJson(),
      if (niveauAcces != null) 'niveauAcces': niveauAcces,
    };
  }

  static SuperAdminInclude include() {
    return SuperAdminInclude._();
  }

  static SuperAdminIncludeList includeList({
    _i2.WhereExpressionBuilder<SuperAdminTable>? where,
    int? limit,
    int? offset,
    _i2.OrderByBuilder<SuperAdminTable>? orderBy,
    bool orderDescending = false,
    _i2.OrderByListBuilder<SuperAdminTable>? orderByList,
    SuperAdminInclude? include,
  }) {
    return SuperAdminIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SuperAdmin.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SuperAdmin.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i2.SerializationManager.encode(this);
  }
}

class _SuperAdminImpl extends SuperAdmin {
  _SuperAdminImpl({
    int? id,
    required String nom,
    required String email,
    String? languePreferee,
    DateTime? dateCreation,
    required _i2.UuidValue authUserId,
    String? niveauAcces,
  }) : super._(
         id: id,
         nom: nom,
         email: email,
         languePreferee: languePreferee,
         dateCreation: dateCreation,
         authUserId: authUserId,
         niveauAcces: niveauAcces,
       );

  /// Returns a shallow copy of this [SuperAdmin]
  /// with some or all fields replaced by the given arguments.
  @_i2.useResult
  @override
  SuperAdmin copyWith({
    Object? id = _Undefined,
    String? nom,
    String? email,
    Object? languePreferee = _Undefined,
    DateTime? dateCreation,
    _i2.UuidValue? authUserId,
    Object? niveauAcces = _Undefined,
  }) {
    return SuperAdmin(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      email: email ?? this.email,
      languePreferee: languePreferee is String?
          ? languePreferee
          : this.languePreferee,
      dateCreation: dateCreation ?? this.dateCreation,
      authUserId: authUserId ?? this.authUserId,
      niveauAcces: niveauAcces is String? ? niveauAcces : this.niveauAcces,
    );
  }
}

class SuperAdminUpdateTable extends _i2.UpdateTable<SuperAdminTable> {
  SuperAdminUpdateTable(super.table);

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

  _i2.ColumnValue<String, String> niveauAcces(String? value) => _i2.ColumnValue(
    table.niveauAcces,
    value,
  );
}

class SuperAdminTable extends _i2.Table<int?> {
  SuperAdminTable({super.tableRelation}) : super(tableName: 'superadmin') {
    updateTable = SuperAdminUpdateTable(this);
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
    niveauAcces = _i2.ColumnString(
      'niveauAcces',
      this,
    );
  }

  late final SuperAdminUpdateTable updateTable;

  late final _i2.ColumnString nom;

  late final _i2.ColumnString email;

  late final _i2.ColumnString languePreferee;

  late final _i2.ColumnDateTime dateCreation;

  late final _i2.ColumnUuid authUserId;

  late final _i2.ColumnString niveauAcces;

  @override
  List<_i2.Column> get columns => [
    id,
    nom,
    email,
    languePreferee,
    dateCreation,
    authUserId,
    niveauAcces,
  ];
}

class SuperAdminInclude extends _i2.IncludeObject {
  SuperAdminInclude._();

  @override
  Map<String, _i2.Include?> get includes => {};

  @override
  _i2.Table<int?> get table => SuperAdmin.t;
}

class SuperAdminIncludeList extends _i2.IncludeList {
  SuperAdminIncludeList._({
    _i2.WhereExpressionBuilder<SuperAdminTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SuperAdmin.t);
  }

  @override
  Map<String, _i2.Include?> get includes => include?.includes ?? {};

  @override
  _i2.Table<int?> get table => SuperAdmin.t;
}

class SuperAdminRepository {
  const SuperAdminRepository._();

  /// Returns a list of [SuperAdmin]s matching the given query parameters.
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
  Future<List<SuperAdmin>> find(
    _i2.DatabaseSession session, {
    _i2.WhereExpressionBuilder<SuperAdminTable>? where,
    int? limit,
    int? offset,
    _i2.OrderByBuilder<SuperAdminTable>? orderBy,
    bool orderDescending = false,
    _i2.OrderByListBuilder<SuperAdminTable>? orderByList,
    _i2.Transaction? transaction,
    _i2.LockMode? lockMode,
    _i2.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SuperAdmin>(
      where: where?.call(SuperAdmin.t),
      orderBy: orderBy?.call(SuperAdmin.t),
      orderByList: orderByList?.call(SuperAdmin.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SuperAdmin] matching the given query parameters.
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
  Future<SuperAdmin?> findFirstRow(
    _i2.DatabaseSession session, {
    _i2.WhereExpressionBuilder<SuperAdminTable>? where,
    int? offset,
    _i2.OrderByBuilder<SuperAdminTable>? orderBy,
    bool orderDescending = false,
    _i2.OrderByListBuilder<SuperAdminTable>? orderByList,
    _i2.Transaction? transaction,
    _i2.LockMode? lockMode,
    _i2.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SuperAdmin>(
      where: where?.call(SuperAdmin.t),
      orderBy: orderBy?.call(SuperAdmin.t),
      orderByList: orderByList?.call(SuperAdmin.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SuperAdmin] by its [id] or null if no such row exists.
  Future<SuperAdmin?> findById(
    _i2.DatabaseSession session,
    int id, {
    _i2.Transaction? transaction,
    _i2.LockMode? lockMode,
    _i2.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SuperAdmin>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SuperAdmin]s in the list and returns the inserted rows.
  ///
  /// The returned [SuperAdmin]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<SuperAdmin>> insert(
    _i2.DatabaseSession session,
    List<SuperAdmin> rows, {
    _i2.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<SuperAdmin>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [SuperAdmin] and returns the inserted row.
  ///
  /// The returned [SuperAdmin] will have its `id` field set.
  Future<SuperAdmin> insertRow(
    _i2.DatabaseSession session,
    SuperAdmin row, {
    _i2.Transaction? transaction,
  }) async {
    return session.db.insertRow<SuperAdmin>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [SuperAdmin]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<SuperAdmin>> update(
    _i2.DatabaseSession session,
    List<SuperAdmin> rows, {
    _i2.ColumnSelections<SuperAdminTable>? columns,
    _i2.Transaction? transaction,
  }) async {
    return session.db.update<SuperAdmin>(
      rows,
      columns: columns?.call(SuperAdmin.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SuperAdmin]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SuperAdmin> updateRow(
    _i2.DatabaseSession session,
    SuperAdmin row, {
    _i2.ColumnSelections<SuperAdminTable>? columns,
    _i2.Transaction? transaction,
  }) async {
    return session.db.updateRow<SuperAdmin>(
      row,
      columns: columns?.call(SuperAdmin.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SuperAdmin] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SuperAdmin?> updateById(
    _i2.DatabaseSession session,
    int id, {
    required _i2.ColumnValueListBuilder<SuperAdminUpdateTable> columnValues,
    _i2.Transaction? transaction,
  }) async {
    return session.db.updateById<SuperAdmin>(
      id,
      columnValues: columnValues(SuperAdmin.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SuperAdmin]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<SuperAdmin>> updateWhere(
    _i2.DatabaseSession session, {
    required _i2.ColumnValueListBuilder<SuperAdminUpdateTable> columnValues,
    required _i2.WhereExpressionBuilder<SuperAdminTable> where,
    int? limit,
    int? offset,
    _i2.OrderByBuilder<SuperAdminTable>? orderBy,
    _i2.OrderByListBuilder<SuperAdminTable>? orderByList,
    bool orderDescending = false,
    _i2.Transaction? transaction,
  }) async {
    return session.db.updateWhere<SuperAdmin>(
      columnValues: columnValues(SuperAdmin.t.updateTable),
      where: where(SuperAdmin.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SuperAdmin.t),
      orderByList: orderByList?.call(SuperAdmin.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [SuperAdmin]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<SuperAdmin>> delete(
    _i2.DatabaseSession session,
    List<SuperAdmin> rows, {
    _i2.Transaction? transaction,
  }) async {
    return session.db.delete<SuperAdmin>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [SuperAdmin].
  Future<SuperAdmin> deleteRow(
    _i2.DatabaseSession session,
    SuperAdmin row, {
    _i2.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SuperAdmin>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<SuperAdmin>> deleteWhere(
    _i2.DatabaseSession session, {
    required _i2.WhereExpressionBuilder<SuperAdminTable> where,
    _i2.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SuperAdmin>(
      where: where(SuperAdmin.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i2.DatabaseSession session, {
    _i2.WhereExpressionBuilder<SuperAdminTable>? where,
    int? limit,
    _i2.Transaction? transaction,
  }) async {
    return session.db.count<SuperAdmin>(
      where: where?.call(SuperAdmin.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SuperAdmin] rows matching the [where] expression.
  Future<void> lockRows(
    _i2.DatabaseSession session, {
    required _i2.WhereExpressionBuilder<SuperAdminTable> where,
    required _i2.LockMode lockMode,
    required _i2.Transaction transaction,
    _i2.LockBehavior lockBehavior = _i2.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SuperAdmin>(
      where: where(SuperAdmin.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

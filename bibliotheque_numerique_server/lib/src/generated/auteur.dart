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

abstract class Auteur extends _i1.Utilisateur
    implements _i2.TableRow<int?>, _i2.ProtocolSerialization {
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

  static final t = AuteurTable();

  static const db = AuteurRepository._();

  @override
  int? id;

  String? biographie;

  @override
  _i2.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static AuteurInclude include() {
    return AuteurInclude._();
  }

  static AuteurIncludeList includeList({
    _i2.WhereExpressionBuilder<AuteurTable>? where,
    int? limit,
    int? offset,
    _i2.OrderByBuilder<AuteurTable>? orderBy,
    bool orderDescending = false,
    _i2.OrderByListBuilder<AuteurTable>? orderByList,
    AuteurInclude? include,
  }) {
    return AuteurIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Auteur.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Auteur.t),
      include: include,
    );
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

class AuteurUpdateTable extends _i2.UpdateTable<AuteurTable> {
  AuteurUpdateTable(super.table);

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

  _i2.ColumnValue<String, String> biographie(String? value) => _i2.ColumnValue(
    table.biographie,
    value,
  );
}

class AuteurTable extends _i2.Table<int?> {
  AuteurTable({super.tableRelation}) : super(tableName: 'auteur') {
    updateTable = AuteurUpdateTable(this);
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
    biographie = _i2.ColumnString(
      'biographie',
      this,
    );
  }

  late final AuteurUpdateTable updateTable;

  late final _i2.ColumnString nom;

  late final _i2.ColumnString email;

  late final _i2.ColumnString languePreferee;

  late final _i2.ColumnDateTime dateCreation;

  late final _i2.ColumnUuid authUserId;

  late final _i2.ColumnString biographie;

  @override
  List<_i2.Column> get columns => [
    id,
    nom,
    email,
    languePreferee,
    dateCreation,
    authUserId,
    biographie,
  ];
}

class AuteurInclude extends _i2.IncludeObject {
  AuteurInclude._();

  @override
  Map<String, _i2.Include?> get includes => {};

  @override
  _i2.Table<int?> get table => Auteur.t;
}

class AuteurIncludeList extends _i2.IncludeList {
  AuteurIncludeList._({
    _i2.WhereExpressionBuilder<AuteurTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Auteur.t);
  }

  @override
  Map<String, _i2.Include?> get includes => include?.includes ?? {};

  @override
  _i2.Table<int?> get table => Auteur.t;
}

class AuteurRepository {
  const AuteurRepository._();

  /// Returns a list of [Auteur]s matching the given query parameters.
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
  Future<List<Auteur>> find(
    _i2.DatabaseSession session, {
    _i2.WhereExpressionBuilder<AuteurTable>? where,
    int? limit,
    int? offset,
    _i2.OrderByBuilder<AuteurTable>? orderBy,
    bool orderDescending = false,
    _i2.OrderByListBuilder<AuteurTable>? orderByList,
    _i2.Transaction? transaction,
    _i2.LockMode? lockMode,
    _i2.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Auteur>(
      where: where?.call(Auteur.t),
      orderBy: orderBy?.call(Auteur.t),
      orderByList: orderByList?.call(Auteur.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Auteur] matching the given query parameters.
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
  Future<Auteur?> findFirstRow(
    _i2.DatabaseSession session, {
    _i2.WhereExpressionBuilder<AuteurTable>? where,
    int? offset,
    _i2.OrderByBuilder<AuteurTable>? orderBy,
    bool orderDescending = false,
    _i2.OrderByListBuilder<AuteurTable>? orderByList,
    _i2.Transaction? transaction,
    _i2.LockMode? lockMode,
    _i2.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Auteur>(
      where: where?.call(Auteur.t),
      orderBy: orderBy?.call(Auteur.t),
      orderByList: orderByList?.call(Auteur.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Auteur] by its [id] or null if no such row exists.
  Future<Auteur?> findById(
    _i2.DatabaseSession session,
    int id, {
    _i2.Transaction? transaction,
    _i2.LockMode? lockMode,
    _i2.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Auteur>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Auteur]s in the list and returns the inserted rows.
  ///
  /// The returned [Auteur]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Auteur>> insert(
    _i2.DatabaseSession session,
    List<Auteur> rows, {
    _i2.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Auteur>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Auteur] and returns the inserted row.
  ///
  /// The returned [Auteur] will have its `id` field set.
  Future<Auteur> insertRow(
    _i2.DatabaseSession session,
    Auteur row, {
    _i2.Transaction? transaction,
  }) async {
    return session.db.insertRow<Auteur>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Auteur]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Auteur>> update(
    _i2.DatabaseSession session,
    List<Auteur> rows, {
    _i2.ColumnSelections<AuteurTable>? columns,
    _i2.Transaction? transaction,
  }) async {
    return session.db.update<Auteur>(
      rows,
      columns: columns?.call(Auteur.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Auteur]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Auteur> updateRow(
    _i2.DatabaseSession session,
    Auteur row, {
    _i2.ColumnSelections<AuteurTable>? columns,
    _i2.Transaction? transaction,
  }) async {
    return session.db.updateRow<Auteur>(
      row,
      columns: columns?.call(Auteur.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Auteur] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Auteur?> updateById(
    _i2.DatabaseSession session,
    int id, {
    required _i2.ColumnValueListBuilder<AuteurUpdateTable> columnValues,
    _i2.Transaction? transaction,
  }) async {
    return session.db.updateById<Auteur>(
      id,
      columnValues: columnValues(Auteur.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Auteur]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Auteur>> updateWhere(
    _i2.DatabaseSession session, {
    required _i2.ColumnValueListBuilder<AuteurUpdateTable> columnValues,
    required _i2.WhereExpressionBuilder<AuteurTable> where,
    int? limit,
    int? offset,
    _i2.OrderByBuilder<AuteurTable>? orderBy,
    _i2.OrderByListBuilder<AuteurTable>? orderByList,
    bool orderDescending = false,
    _i2.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Auteur>(
      columnValues: columnValues(Auteur.t.updateTable),
      where: where(Auteur.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Auteur.t),
      orderByList: orderByList?.call(Auteur.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Auteur]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Auteur>> delete(
    _i2.DatabaseSession session,
    List<Auteur> rows, {
    _i2.Transaction? transaction,
  }) async {
    return session.db.delete<Auteur>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Auteur].
  Future<Auteur> deleteRow(
    _i2.DatabaseSession session,
    Auteur row, {
    _i2.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Auteur>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Auteur>> deleteWhere(
    _i2.DatabaseSession session, {
    required _i2.WhereExpressionBuilder<AuteurTable> where,
    _i2.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Auteur>(
      where: where(Auteur.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i2.DatabaseSession session, {
    _i2.WhereExpressionBuilder<AuteurTable>? where,
    int? limit,
    _i2.Transaction? transaction,
  }) async {
    return session.db.count<Auteur>(
      where: where?.call(Auteur.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Auteur] rows matching the [where] expression.
  Future<void> lockRows(
    _i2.DatabaseSession session, {
    required _i2.WhereExpressionBuilder<AuteurTable> where,
    required _i2.LockMode lockMode,
    required _i2.Transaction transaction,
    _i2.LockBehavior lockBehavior = _i2.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Auteur>(
      where: where(Auteur.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

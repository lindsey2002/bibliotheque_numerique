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

abstract class Langue implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = LangueTable();

  static const db = LangueRepository._();

  @override
  int? id;

  String nom;

  String code;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Langue',
      if (id != null) 'id': id,
      'nom': nom,
      'code': code,
    };
  }

  static LangueInclude include() {
    return LangueInclude._();
  }

  static LangueIncludeList includeList({
    _i1.WhereExpressionBuilder<LangueTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LangueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LangueTable>? orderByList,
    LangueInclude? include,
  }) {
    return LangueIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Langue.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Langue.t),
      include: include,
    );
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

class LangueUpdateTable extends _i1.UpdateTable<LangueTable> {
  LangueUpdateTable(super.table);

  _i1.ColumnValue<String, String> nom(String value) => _i1.ColumnValue(
    table.nom,
    value,
  );

  _i1.ColumnValue<String, String> code(String value) => _i1.ColumnValue(
    table.code,
    value,
  );
}

class LangueTable extends _i1.Table<int?> {
  LangueTable({super.tableRelation}) : super(tableName: 'langue') {
    updateTable = LangueUpdateTable(this);
    nom = _i1.ColumnString(
      'nom',
      this,
    );
    code = _i1.ColumnString(
      'code',
      this,
    );
  }

  late final LangueUpdateTable updateTable;

  late final _i1.ColumnString nom;

  late final _i1.ColumnString code;

  @override
  List<_i1.Column> get columns => [
    id,
    nom,
    code,
  ];
}

class LangueInclude extends _i1.IncludeObject {
  LangueInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Langue.t;
}

class LangueIncludeList extends _i1.IncludeList {
  LangueIncludeList._({
    _i1.WhereExpressionBuilder<LangueTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Langue.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Langue.t;
}

class LangueRepository {
  const LangueRepository._();

  /// Returns a list of [Langue]s matching the given query parameters.
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
  Future<List<Langue>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<LangueTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LangueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LangueTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Langue>(
      where: where?.call(Langue.t),
      orderBy: orderBy?.call(Langue.t),
      orderByList: orderByList?.call(Langue.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Langue] matching the given query parameters.
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
  Future<Langue?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<LangueTable>? where,
    int? offset,
    _i1.OrderByBuilder<LangueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LangueTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Langue>(
      where: where?.call(Langue.t),
      orderBy: orderBy?.call(Langue.t),
      orderByList: orderByList?.call(Langue.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Langue] by its [id] or null if no such row exists.
  Future<Langue?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Langue>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Langue]s in the list and returns the inserted rows.
  ///
  /// The returned [Langue]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Langue>> insert(
    _i1.DatabaseSession session,
    List<Langue> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Langue>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Langue] and returns the inserted row.
  ///
  /// The returned [Langue] will have its `id` field set.
  Future<Langue> insertRow(
    _i1.DatabaseSession session,
    Langue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Langue>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Langue]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Langue>> update(
    _i1.DatabaseSession session,
    List<Langue> rows, {
    _i1.ColumnSelections<LangueTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Langue>(
      rows,
      columns: columns?.call(Langue.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Langue]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Langue> updateRow(
    _i1.DatabaseSession session,
    Langue row, {
    _i1.ColumnSelections<LangueTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Langue>(
      row,
      columns: columns?.call(Langue.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Langue] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Langue?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<LangueUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Langue>(
      id,
      columnValues: columnValues(Langue.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Langue]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Langue>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<LangueUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<LangueTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LangueTable>? orderBy,
    _i1.OrderByListBuilder<LangueTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Langue>(
      columnValues: columnValues(Langue.t.updateTable),
      where: where(Langue.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Langue.t),
      orderByList: orderByList?.call(Langue.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Langue]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Langue>> delete(
    _i1.DatabaseSession session,
    List<Langue> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Langue>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Langue].
  Future<Langue> deleteRow(
    _i1.DatabaseSession session,
    Langue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Langue>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Langue>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<LangueTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Langue>(
      where: where(Langue.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<LangueTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Langue>(
      where: where?.call(Langue.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Langue] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<LangueTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Langue>(
      where: where(Langue.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

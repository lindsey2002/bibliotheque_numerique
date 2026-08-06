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

abstract class Favoris
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Favoris._({
    this.id,
    DateTime? dateAjout,
    required this.lecteurId,
    required this.livreId,
  }) : dateAjout = dateAjout ?? DateTime.now();

  factory Favoris({
    int? id,
    DateTime? dateAjout,
    required int lecteurId,
    required int livreId,
  }) = _FavorisImpl;

  factory Favoris.fromJson(Map<String, dynamic> jsonSerialization) {
    return Favoris(
      id: jsonSerialization['id'] as int?,
      dateAjout: jsonSerialization['dateAjout'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateAjout']),
      lecteurId: jsonSerialization['lecteurId'] as int,
      livreId: jsonSerialization['livreId'] as int,
    );
  }

  static final t = FavorisTable();

  static const db = FavorisRepository._();

  @override
  int? id;

  DateTime dateAjout;

  int lecteurId;

  int livreId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Favoris]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Favoris copyWith({
    int? id,
    DateTime? dateAjout,
    int? lecteurId,
    int? livreId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Favoris',
      if (id != null) 'id': id,
      'dateAjout': dateAjout.toJson(),
      'lecteurId': lecteurId,
      'livreId': livreId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Favoris',
      if (id != null) 'id': id,
      'dateAjout': dateAjout.toJson(),
      'lecteurId': lecteurId,
      'livreId': livreId,
    };
  }

  static FavorisInclude include() {
    return FavorisInclude._();
  }

  static FavorisIncludeList includeList({
    _i1.WhereExpressionBuilder<FavorisTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FavorisTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FavorisTable>? orderByList,
    FavorisInclude? include,
  }) {
    return FavorisIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Favoris.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Favoris.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FavorisImpl extends Favoris {
  _FavorisImpl({
    int? id,
    DateTime? dateAjout,
    required int lecteurId,
    required int livreId,
  }) : super._(
         id: id,
         dateAjout: dateAjout,
         lecteurId: lecteurId,
         livreId: livreId,
       );

  /// Returns a shallow copy of this [Favoris]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Favoris copyWith({
    Object? id = _Undefined,
    DateTime? dateAjout,
    int? lecteurId,
    int? livreId,
  }) {
    return Favoris(
      id: id is int? ? id : this.id,
      dateAjout: dateAjout ?? this.dateAjout,
      lecteurId: lecteurId ?? this.lecteurId,
      livreId: livreId ?? this.livreId,
    );
  }
}

class FavorisUpdateTable extends _i1.UpdateTable<FavorisTable> {
  FavorisUpdateTable(super.table);

  _i1.ColumnValue<DateTime, DateTime> dateAjout(DateTime value) =>
      _i1.ColumnValue(
        table.dateAjout,
        value,
      );

  _i1.ColumnValue<int, int> lecteurId(int value) => _i1.ColumnValue(
    table.lecteurId,
    value,
  );

  _i1.ColumnValue<int, int> livreId(int value) => _i1.ColumnValue(
    table.livreId,
    value,
  );
}

class FavorisTable extends _i1.Table<int?> {
  FavorisTable({super.tableRelation}) : super(tableName: 'favoris') {
    updateTable = FavorisUpdateTable(this);
    dateAjout = _i1.ColumnDateTime(
      'dateAjout',
      this,
      hasDefault: true,
    );
    lecteurId = _i1.ColumnInt(
      'lecteurId',
      this,
    );
    livreId = _i1.ColumnInt(
      'livreId',
      this,
    );
  }

  late final FavorisUpdateTable updateTable;

  late final _i1.ColumnDateTime dateAjout;

  late final _i1.ColumnInt lecteurId;

  late final _i1.ColumnInt livreId;

  @override
  List<_i1.Column> get columns => [
    id,
    dateAjout,
    lecteurId,
    livreId,
  ];
}

class FavorisInclude extends _i1.IncludeObject {
  FavorisInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Favoris.t;
}

class FavorisIncludeList extends _i1.IncludeList {
  FavorisIncludeList._({
    _i1.WhereExpressionBuilder<FavorisTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Favoris.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Favoris.t;
}

class FavorisRepository {
  const FavorisRepository._();

  /// Returns a list of [Favoris]s matching the given query parameters.
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
  Future<List<Favoris>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FavorisTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FavorisTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FavorisTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Favoris>(
      where: where?.call(Favoris.t),
      orderBy: orderBy?.call(Favoris.t),
      orderByList: orderByList?.call(Favoris.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Favoris] matching the given query parameters.
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
  Future<Favoris?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FavorisTable>? where,
    int? offset,
    _i1.OrderByBuilder<FavorisTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FavorisTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Favoris>(
      where: where?.call(Favoris.t),
      orderBy: orderBy?.call(Favoris.t),
      orderByList: orderByList?.call(Favoris.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Favoris] by its [id] or null if no such row exists.
  Future<Favoris?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Favoris>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Favoris]s in the list and returns the inserted rows.
  ///
  /// The returned [Favoris]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Favoris>> insert(
    _i1.DatabaseSession session,
    List<Favoris> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Favoris>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Favoris] and returns the inserted row.
  ///
  /// The returned [Favoris] will have its `id` field set.
  Future<Favoris> insertRow(
    _i1.DatabaseSession session,
    Favoris row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Favoris>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Favoris]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Favoris>> update(
    _i1.DatabaseSession session,
    List<Favoris> rows, {
    _i1.ColumnSelections<FavorisTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Favoris>(
      rows,
      columns: columns?.call(Favoris.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Favoris]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Favoris> updateRow(
    _i1.DatabaseSession session,
    Favoris row, {
    _i1.ColumnSelections<FavorisTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Favoris>(
      row,
      columns: columns?.call(Favoris.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Favoris] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Favoris?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<FavorisUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Favoris>(
      id,
      columnValues: columnValues(Favoris.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Favoris]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Favoris>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<FavorisUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<FavorisTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FavorisTable>? orderBy,
    _i1.OrderByListBuilder<FavorisTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Favoris>(
      columnValues: columnValues(Favoris.t.updateTable),
      where: where(Favoris.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Favoris.t),
      orderByList: orderByList?.call(Favoris.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Favoris]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Favoris>> delete(
    _i1.DatabaseSession session,
    List<Favoris> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Favoris>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Favoris].
  Future<Favoris> deleteRow(
    _i1.DatabaseSession session,
    Favoris row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Favoris>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Favoris>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<FavorisTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Favoris>(
      where: where(Favoris.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<FavorisTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Favoris>(
      where: where?.call(Favoris.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Favoris] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<FavorisTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Favoris>(
      where: where(Favoris.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

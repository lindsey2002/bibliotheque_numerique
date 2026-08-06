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

abstract class AmbianceSonore
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = AmbianceSonoreTable();

  static const db = AmbianceSonoreRepository._();

  @override
  int? id;

  String nom;

  String fichierAudio;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'AmbianceSonore',
      if (id != null) 'id': id,
      'nom': nom,
      'fichierAudio': fichierAudio,
    };
  }

  static AmbianceSonoreInclude include() {
    return AmbianceSonoreInclude._();
  }

  static AmbianceSonoreIncludeList includeList({
    _i1.WhereExpressionBuilder<AmbianceSonoreTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AmbianceSonoreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AmbianceSonoreTable>? orderByList,
    AmbianceSonoreInclude? include,
  }) {
    return AmbianceSonoreIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AmbianceSonore.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(AmbianceSonore.t),
      include: include,
    );
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

class AmbianceSonoreUpdateTable extends _i1.UpdateTable<AmbianceSonoreTable> {
  AmbianceSonoreUpdateTable(super.table);

  _i1.ColumnValue<String, String> nom(String value) => _i1.ColumnValue(
    table.nom,
    value,
  );

  _i1.ColumnValue<String, String> fichierAudio(String value) => _i1.ColumnValue(
    table.fichierAudio,
    value,
  );
}

class AmbianceSonoreTable extends _i1.Table<int?> {
  AmbianceSonoreTable({super.tableRelation})
    : super(tableName: 'ambiance_sonore') {
    updateTable = AmbianceSonoreUpdateTable(this);
    nom = _i1.ColumnString(
      'nom',
      this,
    );
    fichierAudio = _i1.ColumnString(
      'fichierAudio',
      this,
    );
  }

  late final AmbianceSonoreUpdateTable updateTable;

  late final _i1.ColumnString nom;

  late final _i1.ColumnString fichierAudio;

  @override
  List<_i1.Column> get columns => [
    id,
    nom,
    fichierAudio,
  ];
}

class AmbianceSonoreInclude extends _i1.IncludeObject {
  AmbianceSonoreInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => AmbianceSonore.t;
}

class AmbianceSonoreIncludeList extends _i1.IncludeList {
  AmbianceSonoreIncludeList._({
    _i1.WhereExpressionBuilder<AmbianceSonoreTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AmbianceSonore.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => AmbianceSonore.t;
}

class AmbianceSonoreRepository {
  const AmbianceSonoreRepository._();

  /// Returns a list of [AmbianceSonore]s matching the given query parameters.
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
  Future<List<AmbianceSonore>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AmbianceSonoreTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AmbianceSonoreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AmbianceSonoreTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<AmbianceSonore>(
      where: where?.call(AmbianceSonore.t),
      orderBy: orderBy?.call(AmbianceSonore.t),
      orderByList: orderByList?.call(AmbianceSonore.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [AmbianceSonore] matching the given query parameters.
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
  Future<AmbianceSonore?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AmbianceSonoreTable>? where,
    int? offset,
    _i1.OrderByBuilder<AmbianceSonoreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AmbianceSonoreTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<AmbianceSonore>(
      where: where?.call(AmbianceSonore.t),
      orderBy: orderBy?.call(AmbianceSonore.t),
      orderByList: orderByList?.call(AmbianceSonore.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [AmbianceSonore] by its [id] or null if no such row exists.
  Future<AmbianceSonore?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<AmbianceSonore>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [AmbianceSonore]s in the list and returns the inserted rows.
  ///
  /// The returned [AmbianceSonore]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<AmbianceSonore>> insert(
    _i1.DatabaseSession session,
    List<AmbianceSonore> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<AmbianceSonore>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [AmbianceSonore] and returns the inserted row.
  ///
  /// The returned [AmbianceSonore] will have its `id` field set.
  Future<AmbianceSonore> insertRow(
    _i1.DatabaseSession session,
    AmbianceSonore row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<AmbianceSonore>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [AmbianceSonore]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<AmbianceSonore>> update(
    _i1.DatabaseSession session,
    List<AmbianceSonore> rows, {
    _i1.ColumnSelections<AmbianceSonoreTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<AmbianceSonore>(
      rows,
      columns: columns?.call(AmbianceSonore.t),
      transaction: transaction,
    );
  }

  /// Updates a single [AmbianceSonore]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<AmbianceSonore> updateRow(
    _i1.DatabaseSession session,
    AmbianceSonore row, {
    _i1.ColumnSelections<AmbianceSonoreTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<AmbianceSonore>(
      row,
      columns: columns?.call(AmbianceSonore.t),
      transaction: transaction,
    );
  }

  /// Updates a single [AmbianceSonore] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<AmbianceSonore?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<AmbianceSonoreUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<AmbianceSonore>(
      id,
      columnValues: columnValues(AmbianceSonore.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [AmbianceSonore]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<AmbianceSonore>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<AmbianceSonoreUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<AmbianceSonoreTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AmbianceSonoreTable>? orderBy,
    _i1.OrderByListBuilder<AmbianceSonoreTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<AmbianceSonore>(
      columnValues: columnValues(AmbianceSonore.t.updateTable),
      where: where(AmbianceSonore.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AmbianceSonore.t),
      orderByList: orderByList?.call(AmbianceSonore.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [AmbianceSonore]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<AmbianceSonore>> delete(
    _i1.DatabaseSession session,
    List<AmbianceSonore> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AmbianceSonore>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [AmbianceSonore].
  Future<AmbianceSonore> deleteRow(
    _i1.DatabaseSession session,
    AmbianceSonore row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AmbianceSonore>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<AmbianceSonore>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AmbianceSonoreTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<AmbianceSonore>(
      where: where(AmbianceSonore.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AmbianceSonoreTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AmbianceSonore>(
      where: where?.call(AmbianceSonore.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [AmbianceSonore] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AmbianceSonoreTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<AmbianceSonore>(
      where: where(AmbianceSonore.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

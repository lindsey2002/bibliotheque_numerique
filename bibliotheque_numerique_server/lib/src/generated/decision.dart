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
import 'etatdecision.dart' as _i2;

abstract class Decision
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Decision._({
    this.id,
    _i2.EtatDecision? etat,
    this.justificationAuteur,
    DateTime? dateDecision,
    required this.livreId,
    this.superAdminId,
  }) : etat = etat ?? _i2.EtatDecision.enAttente,
       dateDecision = dateDecision ?? DateTime.now();

  factory Decision({
    int? id,
    _i2.EtatDecision? etat,
    String? justificationAuteur,
    DateTime? dateDecision,
    required int livreId,
    int? superAdminId,
  }) = _DecisionImpl;

  factory Decision.fromJson(Map<String, dynamic> jsonSerialization) {
    return Decision(
      id: jsonSerialization['id'] as int?,
      etat: jsonSerialization['etat'] == null
          ? null
          : _i2.EtatDecision.fromJson((jsonSerialization['etat'] as String)),
      justificationAuteur: jsonSerialization['justificationAuteur'] as String?,
      dateDecision: jsonSerialization['dateDecision'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateDecision'],
            ),
      livreId: jsonSerialization['livreId'] as int,
      superAdminId: jsonSerialization['superAdminId'] as int?,
    );
  }

  static final t = DecisionTable();

  static const db = DecisionRepository._();

  @override
  int? id;

  _i2.EtatDecision etat;

  String? justificationAuteur;

  DateTime dateDecision;

  int livreId;

  int? superAdminId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Decision]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Decision copyWith({
    int? id,
    _i2.EtatDecision? etat,
    String? justificationAuteur,
    DateTime? dateDecision,
    int? livreId,
    int? superAdminId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Decision',
      if (id != null) 'id': id,
      'etat': etat.toJson(),
      if (justificationAuteur != null)
        'justificationAuteur': justificationAuteur,
      'dateDecision': dateDecision.toJson(),
      'livreId': livreId,
      if (superAdminId != null) 'superAdminId': superAdminId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Decision',
      if (id != null) 'id': id,
      'etat': etat.toJson(),
      if (justificationAuteur != null)
        'justificationAuteur': justificationAuteur,
      'dateDecision': dateDecision.toJson(),
      'livreId': livreId,
      if (superAdminId != null) 'superAdminId': superAdminId,
    };
  }

  static DecisionInclude include() {
    return DecisionInclude._();
  }

  static DecisionIncludeList includeList({
    _i1.WhereExpressionBuilder<DecisionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DecisionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DecisionTable>? orderByList,
    DecisionInclude? include,
  }) {
    return DecisionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Decision.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Decision.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DecisionImpl extends Decision {
  _DecisionImpl({
    int? id,
    _i2.EtatDecision? etat,
    String? justificationAuteur,
    DateTime? dateDecision,
    required int livreId,
    int? superAdminId,
  }) : super._(
         id: id,
         etat: etat,
         justificationAuteur: justificationAuteur,
         dateDecision: dateDecision,
         livreId: livreId,
         superAdminId: superAdminId,
       );

  /// Returns a shallow copy of this [Decision]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Decision copyWith({
    Object? id = _Undefined,
    _i2.EtatDecision? etat,
    Object? justificationAuteur = _Undefined,
    DateTime? dateDecision,
    int? livreId,
    Object? superAdminId = _Undefined,
  }) {
    return Decision(
      id: id is int? ? id : this.id,
      etat: etat ?? this.etat,
      justificationAuteur: justificationAuteur is String?
          ? justificationAuteur
          : this.justificationAuteur,
      dateDecision: dateDecision ?? this.dateDecision,
      livreId: livreId ?? this.livreId,
      superAdminId: superAdminId is int? ? superAdminId : this.superAdminId,
    );
  }
}

class DecisionUpdateTable extends _i1.UpdateTable<DecisionTable> {
  DecisionUpdateTable(super.table);

  _i1.ColumnValue<_i2.EtatDecision, _i2.EtatDecision> etat(
    _i2.EtatDecision value,
  ) => _i1.ColumnValue(
    table.etat,
    value,
  );

  _i1.ColumnValue<String, String> justificationAuteur(String? value) =>
      _i1.ColumnValue(
        table.justificationAuteur,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> dateDecision(DateTime value) =>
      _i1.ColumnValue(
        table.dateDecision,
        value,
      );

  _i1.ColumnValue<int, int> livreId(int value) => _i1.ColumnValue(
    table.livreId,
    value,
  );

  _i1.ColumnValue<int, int> superAdminId(int? value) => _i1.ColumnValue(
    table.superAdminId,
    value,
  );
}

class DecisionTable extends _i1.Table<int?> {
  DecisionTable({super.tableRelation}) : super(tableName: 'decision') {
    updateTable = DecisionUpdateTable(this);
    etat = _i1.ColumnEnum(
      'etat',
      this,
      _i1.EnumSerialization.byName,
      hasDefault: true,
    );
    justificationAuteur = _i1.ColumnString(
      'justificationAuteur',
      this,
    );
    dateDecision = _i1.ColumnDateTime(
      'dateDecision',
      this,
      hasDefault: true,
    );
    livreId = _i1.ColumnInt(
      'livreId',
      this,
    );
    superAdminId = _i1.ColumnInt(
      'superAdminId',
      this,
    );
  }

  late final DecisionUpdateTable updateTable;

  late final _i1.ColumnEnum<_i2.EtatDecision> etat;

  late final _i1.ColumnString justificationAuteur;

  late final _i1.ColumnDateTime dateDecision;

  late final _i1.ColumnInt livreId;

  late final _i1.ColumnInt superAdminId;

  @override
  List<_i1.Column> get columns => [
    id,
    etat,
    justificationAuteur,
    dateDecision,
    livreId,
    superAdminId,
  ];
}

class DecisionInclude extends _i1.IncludeObject {
  DecisionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Decision.t;
}

class DecisionIncludeList extends _i1.IncludeList {
  DecisionIncludeList._({
    _i1.WhereExpressionBuilder<DecisionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Decision.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Decision.t;
}

class DecisionRepository {
  const DecisionRepository._();

  /// Returns a list of [Decision]s matching the given query parameters.
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
  Future<List<Decision>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<DecisionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DecisionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DecisionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Decision>(
      where: where?.call(Decision.t),
      orderBy: orderBy?.call(Decision.t),
      orderByList: orderByList?.call(Decision.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Decision] matching the given query parameters.
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
  Future<Decision?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<DecisionTable>? where,
    int? offset,
    _i1.OrderByBuilder<DecisionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DecisionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Decision>(
      where: where?.call(Decision.t),
      orderBy: orderBy?.call(Decision.t),
      orderByList: orderByList?.call(Decision.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Decision] by its [id] or null if no such row exists.
  Future<Decision?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Decision>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Decision]s in the list and returns the inserted rows.
  ///
  /// The returned [Decision]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Decision>> insert(
    _i1.DatabaseSession session,
    List<Decision> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Decision>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Decision] and returns the inserted row.
  ///
  /// The returned [Decision] will have its `id` field set.
  Future<Decision> insertRow(
    _i1.DatabaseSession session,
    Decision row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Decision>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Decision]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Decision>> update(
    _i1.DatabaseSession session,
    List<Decision> rows, {
    _i1.ColumnSelections<DecisionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Decision>(
      rows,
      columns: columns?.call(Decision.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Decision]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Decision> updateRow(
    _i1.DatabaseSession session,
    Decision row, {
    _i1.ColumnSelections<DecisionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Decision>(
      row,
      columns: columns?.call(Decision.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Decision] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Decision?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<DecisionUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Decision>(
      id,
      columnValues: columnValues(Decision.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Decision]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Decision>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<DecisionUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<DecisionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DecisionTable>? orderBy,
    _i1.OrderByListBuilder<DecisionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Decision>(
      columnValues: columnValues(Decision.t.updateTable),
      where: where(Decision.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Decision.t),
      orderByList: orderByList?.call(Decision.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Decision]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Decision>> delete(
    _i1.DatabaseSession session,
    List<Decision> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Decision>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Decision].
  Future<Decision> deleteRow(
    _i1.DatabaseSession session,
    Decision row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Decision>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Decision>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<DecisionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Decision>(
      where: where(Decision.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<DecisionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Decision>(
      where: where?.call(Decision.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Decision] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<DecisionTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Decision>(
      where: where(Decision.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

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
import 'typeabonnement.dart' as _i2;

abstract class TarifAbonnement
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  TarifAbonnement._({
    this.id,
    required this.type,
    required this.prix,
    DateTime? dateDebut,
    this.dateFin,
  }) : dateDebut = dateDebut ?? DateTime.now();

  factory TarifAbonnement({
    int? id,
    required _i2.TypeAbonnement type,
    required double prix,
    DateTime? dateDebut,
    DateTime? dateFin,
  }) = _TarifAbonnementImpl;

  factory TarifAbonnement.fromJson(Map<String, dynamic> jsonSerialization) {
    return TarifAbonnement(
      id: jsonSerialization['id'] as int?,
      type: _i2.TypeAbonnement.fromJson((jsonSerialization['type'] as String)),
      prix: (jsonSerialization['prix'] as num).toDouble(),
      dateDebut: jsonSerialization['dateDebut'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateDebut']),
      dateFin: jsonSerialization['dateFin'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateFin']),
    );
  }

  static final t = TarifAbonnementTable();

  static const db = TarifAbonnementRepository._();

  @override
  int? id;

  _i2.TypeAbonnement type;

  double prix;

  DateTime dateDebut;

  DateTime? dateFin;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [TarifAbonnement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TarifAbonnement copyWith({
    int? id,
    _i2.TypeAbonnement? type,
    double? prix,
    DateTime? dateDebut,
    DateTime? dateFin,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'TarifAbonnement',
      if (id != null) 'id': id,
      'type': type.toJson(),
      'prix': prix,
      'dateDebut': dateDebut.toJson(),
      if (dateFin != null) 'dateFin': dateFin?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'TarifAbonnement',
      if (id != null) 'id': id,
      'type': type.toJson(),
      'prix': prix,
      'dateDebut': dateDebut.toJson(),
      if (dateFin != null) 'dateFin': dateFin?.toJson(),
    };
  }

  static TarifAbonnementInclude include() {
    return TarifAbonnementInclude._();
  }

  static TarifAbonnementIncludeList includeList({
    _i1.WhereExpressionBuilder<TarifAbonnementTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TarifAbonnementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TarifAbonnementTable>? orderByList,
    TarifAbonnementInclude? include,
  }) {
    return TarifAbonnementIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TarifAbonnement.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TarifAbonnement.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TarifAbonnementImpl extends TarifAbonnement {
  _TarifAbonnementImpl({
    int? id,
    required _i2.TypeAbonnement type,
    required double prix,
    DateTime? dateDebut,
    DateTime? dateFin,
  }) : super._(
         id: id,
         type: type,
         prix: prix,
         dateDebut: dateDebut,
         dateFin: dateFin,
       );

  /// Returns a shallow copy of this [TarifAbonnement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TarifAbonnement copyWith({
    Object? id = _Undefined,
    _i2.TypeAbonnement? type,
    double? prix,
    DateTime? dateDebut,
    Object? dateFin = _Undefined,
  }) {
    return TarifAbonnement(
      id: id is int? ? id : this.id,
      type: type ?? this.type,
      prix: prix ?? this.prix,
      dateDebut: dateDebut ?? this.dateDebut,
      dateFin: dateFin is DateTime? ? dateFin : this.dateFin,
    );
  }
}

class TarifAbonnementUpdateTable extends _i1.UpdateTable<TarifAbonnementTable> {
  TarifAbonnementUpdateTable(super.table);

  _i1.ColumnValue<_i2.TypeAbonnement, _i2.TypeAbonnement> type(
    _i2.TypeAbonnement value,
  ) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<double, double> prix(double value) => _i1.ColumnValue(
    table.prix,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dateDebut(DateTime value) =>
      _i1.ColumnValue(
        table.dateDebut,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> dateFin(DateTime? value) =>
      _i1.ColumnValue(
        table.dateFin,
        value,
      );
}

class TarifAbonnementTable extends _i1.Table<int?> {
  TarifAbonnementTable({super.tableRelation})
    : super(tableName: 'tarif_abonnement') {
    updateTable = TarifAbonnementUpdateTable(this);
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byName,
    );
    prix = _i1.ColumnDouble(
      'prix',
      this,
    );
    dateDebut = _i1.ColumnDateTime(
      'dateDebut',
      this,
      hasDefault: true,
    );
    dateFin = _i1.ColumnDateTime(
      'dateFin',
      this,
    );
  }

  late final TarifAbonnementUpdateTable updateTable;

  late final _i1.ColumnEnum<_i2.TypeAbonnement> type;

  late final _i1.ColumnDouble prix;

  late final _i1.ColumnDateTime dateDebut;

  late final _i1.ColumnDateTime dateFin;

  @override
  List<_i1.Column> get columns => [
    id,
    type,
    prix,
    dateDebut,
    dateFin,
  ];
}

class TarifAbonnementInclude extends _i1.IncludeObject {
  TarifAbonnementInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => TarifAbonnement.t;
}

class TarifAbonnementIncludeList extends _i1.IncludeList {
  TarifAbonnementIncludeList._({
    _i1.WhereExpressionBuilder<TarifAbonnementTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TarifAbonnement.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => TarifAbonnement.t;
}

class TarifAbonnementRepository {
  const TarifAbonnementRepository._();

  /// Returns a list of [TarifAbonnement]s matching the given query parameters.
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
  Future<List<TarifAbonnement>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<TarifAbonnementTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TarifAbonnementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TarifAbonnementTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<TarifAbonnement>(
      where: where?.call(TarifAbonnement.t),
      orderBy: orderBy?.call(TarifAbonnement.t),
      orderByList: orderByList?.call(TarifAbonnement.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [TarifAbonnement] matching the given query parameters.
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
  Future<TarifAbonnement?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<TarifAbonnementTable>? where,
    int? offset,
    _i1.OrderByBuilder<TarifAbonnementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TarifAbonnementTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<TarifAbonnement>(
      where: where?.call(TarifAbonnement.t),
      orderBy: orderBy?.call(TarifAbonnement.t),
      orderByList: orderByList?.call(TarifAbonnement.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [TarifAbonnement] by its [id] or null if no such row exists.
  Future<TarifAbonnement?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<TarifAbonnement>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [TarifAbonnement]s in the list and returns the inserted rows.
  ///
  /// The returned [TarifAbonnement]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<TarifAbonnement>> insert(
    _i1.DatabaseSession session,
    List<TarifAbonnement> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<TarifAbonnement>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [TarifAbonnement] and returns the inserted row.
  ///
  /// The returned [TarifAbonnement] will have its `id` field set.
  Future<TarifAbonnement> insertRow(
    _i1.DatabaseSession session,
    TarifAbonnement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TarifAbonnement>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [TarifAbonnement]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<TarifAbonnement>> update(
    _i1.DatabaseSession session,
    List<TarifAbonnement> rows, {
    _i1.ColumnSelections<TarifAbonnementTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<TarifAbonnement>(
      rows,
      columns: columns?.call(TarifAbonnement.t),
      transaction: transaction,
    );
  }

  /// Updates a single [TarifAbonnement]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<TarifAbonnement> updateRow(
    _i1.DatabaseSession session,
    TarifAbonnement row, {
    _i1.ColumnSelections<TarifAbonnementTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<TarifAbonnement>(
      row,
      columns: columns?.call(TarifAbonnement.t),
      transaction: transaction,
    );
  }

  /// Updates a single [TarifAbonnement] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<TarifAbonnement?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<TarifAbonnementUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<TarifAbonnement>(
      id,
      columnValues: columnValues(TarifAbonnement.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [TarifAbonnement]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<TarifAbonnement>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<TarifAbonnementUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<TarifAbonnementTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TarifAbonnementTable>? orderBy,
    _i1.OrderByListBuilder<TarifAbonnementTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<TarifAbonnement>(
      columnValues: columnValues(TarifAbonnement.t.updateTable),
      where: where(TarifAbonnement.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TarifAbonnement.t),
      orderByList: orderByList?.call(TarifAbonnement.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [TarifAbonnement]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<TarifAbonnement>> delete(
    _i1.DatabaseSession session,
    List<TarifAbonnement> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TarifAbonnement>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [TarifAbonnement].
  Future<TarifAbonnement> deleteRow(
    _i1.DatabaseSession session,
    TarifAbonnement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TarifAbonnement>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<TarifAbonnement>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<TarifAbonnementTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TarifAbonnement>(
      where: where(TarifAbonnement.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<TarifAbonnementTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TarifAbonnement>(
      where: where?.call(TarifAbonnement.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [TarifAbonnement] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<TarifAbonnementTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<TarifAbonnement>(
      where: where(TarifAbonnement.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

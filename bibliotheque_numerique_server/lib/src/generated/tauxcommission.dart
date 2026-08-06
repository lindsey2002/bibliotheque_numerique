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

abstract class TauxCommission
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  TauxCommission._({
    this.id,
    required this.tauxPlateforme,
    required this.montantParLectureUnique,
    required this.seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    this.dateFin,
  }) : dateDebut = dateDebut ?? DateTime.now();

  factory TauxCommission({
    int? id,
    required double tauxPlateforme,
    required double montantParLectureUnique,
    required int seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    DateTime? dateFin,
  }) = _TauxCommissionImpl;

  factory TauxCommission.fromJson(Map<String, dynamic> jsonSerialization) {
    return TauxCommission(
      id: jsonSerialization['id'] as int?,
      tauxPlateforme: (jsonSerialization['tauxPlateforme'] as num).toDouble(),
      montantParLectureUnique:
          (jsonSerialization['montantParLectureUnique'] as num).toDouble(),
      seuilLecteursUniquesGratuit:
          jsonSerialization['seuilLecteursUniquesGratuit'] as int,
      dateDebut: jsonSerialization['dateDebut'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateDebut']),
      dateFin: jsonSerialization['dateFin'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateFin']),
    );
  }

  static final t = TauxCommissionTable();

  static const db = TauxCommissionRepository._();

  @override
  int? id;

  double tauxPlateforme;

  double montantParLectureUnique;

  int seuilLecteursUniquesGratuit;

  DateTime dateDebut;

  DateTime? dateFin;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [TauxCommission]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TauxCommission copyWith({
    int? id,
    double? tauxPlateforme,
    double? montantParLectureUnique,
    int? seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    DateTime? dateFin,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'TauxCommission',
      if (id != null) 'id': id,
      'tauxPlateforme': tauxPlateforme,
      'montantParLectureUnique': montantParLectureUnique,
      'seuilLecteursUniquesGratuit': seuilLecteursUniquesGratuit,
      'dateDebut': dateDebut.toJson(),
      if (dateFin != null) 'dateFin': dateFin?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'TauxCommission',
      if (id != null) 'id': id,
      'tauxPlateforme': tauxPlateforme,
      'montantParLectureUnique': montantParLectureUnique,
      'seuilLecteursUniquesGratuit': seuilLecteursUniquesGratuit,
      'dateDebut': dateDebut.toJson(),
      if (dateFin != null) 'dateFin': dateFin?.toJson(),
    };
  }

  static TauxCommissionInclude include() {
    return TauxCommissionInclude._();
  }

  static TauxCommissionIncludeList includeList({
    _i1.WhereExpressionBuilder<TauxCommissionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TauxCommissionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TauxCommissionTable>? orderByList,
    TauxCommissionInclude? include,
  }) {
    return TauxCommissionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TauxCommission.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TauxCommission.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TauxCommissionImpl extends TauxCommission {
  _TauxCommissionImpl({
    int? id,
    required double tauxPlateforme,
    required double montantParLectureUnique,
    required int seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    DateTime? dateFin,
  }) : super._(
         id: id,
         tauxPlateforme: tauxPlateforme,
         montantParLectureUnique: montantParLectureUnique,
         seuilLecteursUniquesGratuit: seuilLecteursUniquesGratuit,
         dateDebut: dateDebut,
         dateFin: dateFin,
       );

  /// Returns a shallow copy of this [TauxCommission]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TauxCommission copyWith({
    Object? id = _Undefined,
    double? tauxPlateforme,
    double? montantParLectureUnique,
    int? seuilLecteursUniquesGratuit,
    DateTime? dateDebut,
    Object? dateFin = _Undefined,
  }) {
    return TauxCommission(
      id: id is int? ? id : this.id,
      tauxPlateforme: tauxPlateforme ?? this.tauxPlateforme,
      montantParLectureUnique:
          montantParLectureUnique ?? this.montantParLectureUnique,
      seuilLecteursUniquesGratuit:
          seuilLecteursUniquesGratuit ?? this.seuilLecteursUniquesGratuit,
      dateDebut: dateDebut ?? this.dateDebut,
      dateFin: dateFin is DateTime? ? dateFin : this.dateFin,
    );
  }
}

class TauxCommissionUpdateTable extends _i1.UpdateTable<TauxCommissionTable> {
  TauxCommissionUpdateTable(super.table);

  _i1.ColumnValue<double, double> tauxPlateforme(double value) =>
      _i1.ColumnValue(
        table.tauxPlateforme,
        value,
      );

  _i1.ColumnValue<double, double> montantParLectureUnique(double value) =>
      _i1.ColumnValue(
        table.montantParLectureUnique,
        value,
      );

  _i1.ColumnValue<int, int> seuilLecteursUniquesGratuit(int value) =>
      _i1.ColumnValue(
        table.seuilLecteursUniquesGratuit,
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

class TauxCommissionTable extends _i1.Table<int?> {
  TauxCommissionTable({super.tableRelation})
    : super(tableName: 'taux_commission') {
    updateTable = TauxCommissionUpdateTable(this);
    tauxPlateforme = _i1.ColumnDouble(
      'tauxPlateforme',
      this,
    );
    montantParLectureUnique = _i1.ColumnDouble(
      'montantParLectureUnique',
      this,
    );
    seuilLecteursUniquesGratuit = _i1.ColumnInt(
      'seuilLecteursUniquesGratuit',
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

  late final TauxCommissionUpdateTable updateTable;

  late final _i1.ColumnDouble tauxPlateforme;

  late final _i1.ColumnDouble montantParLectureUnique;

  late final _i1.ColumnInt seuilLecteursUniquesGratuit;

  late final _i1.ColumnDateTime dateDebut;

  late final _i1.ColumnDateTime dateFin;

  @override
  List<_i1.Column> get columns => [
    id,
    tauxPlateforme,
    montantParLectureUnique,
    seuilLecteursUniquesGratuit,
    dateDebut,
    dateFin,
  ];
}

class TauxCommissionInclude extends _i1.IncludeObject {
  TauxCommissionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => TauxCommission.t;
}

class TauxCommissionIncludeList extends _i1.IncludeList {
  TauxCommissionIncludeList._({
    _i1.WhereExpressionBuilder<TauxCommissionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TauxCommission.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => TauxCommission.t;
}

class TauxCommissionRepository {
  const TauxCommissionRepository._();

  /// Returns a list of [TauxCommission]s matching the given query parameters.
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
  Future<List<TauxCommission>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<TauxCommissionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TauxCommissionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TauxCommissionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<TauxCommission>(
      where: where?.call(TauxCommission.t),
      orderBy: orderBy?.call(TauxCommission.t),
      orderByList: orderByList?.call(TauxCommission.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [TauxCommission] matching the given query parameters.
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
  Future<TauxCommission?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<TauxCommissionTable>? where,
    int? offset,
    _i1.OrderByBuilder<TauxCommissionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TauxCommissionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<TauxCommission>(
      where: where?.call(TauxCommission.t),
      orderBy: orderBy?.call(TauxCommission.t),
      orderByList: orderByList?.call(TauxCommission.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [TauxCommission] by its [id] or null if no such row exists.
  Future<TauxCommission?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<TauxCommission>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [TauxCommission]s in the list and returns the inserted rows.
  ///
  /// The returned [TauxCommission]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<TauxCommission>> insert(
    _i1.DatabaseSession session,
    List<TauxCommission> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<TauxCommission>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [TauxCommission] and returns the inserted row.
  ///
  /// The returned [TauxCommission] will have its `id` field set.
  Future<TauxCommission> insertRow(
    _i1.DatabaseSession session,
    TauxCommission row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TauxCommission>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [TauxCommission]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<TauxCommission>> update(
    _i1.DatabaseSession session,
    List<TauxCommission> rows, {
    _i1.ColumnSelections<TauxCommissionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<TauxCommission>(
      rows,
      columns: columns?.call(TauxCommission.t),
      transaction: transaction,
    );
  }

  /// Updates a single [TauxCommission]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<TauxCommission> updateRow(
    _i1.DatabaseSession session,
    TauxCommission row, {
    _i1.ColumnSelections<TauxCommissionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<TauxCommission>(
      row,
      columns: columns?.call(TauxCommission.t),
      transaction: transaction,
    );
  }

  /// Updates a single [TauxCommission] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<TauxCommission?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<TauxCommissionUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<TauxCommission>(
      id,
      columnValues: columnValues(TauxCommission.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [TauxCommission]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<TauxCommission>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<TauxCommissionUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<TauxCommissionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TauxCommissionTable>? orderBy,
    _i1.OrderByListBuilder<TauxCommissionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<TauxCommission>(
      columnValues: columnValues(TauxCommission.t.updateTable),
      where: where(TauxCommission.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TauxCommission.t),
      orderByList: orderByList?.call(TauxCommission.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [TauxCommission]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<TauxCommission>> delete(
    _i1.DatabaseSession session,
    List<TauxCommission> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TauxCommission>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [TauxCommission].
  Future<TauxCommission> deleteRow(
    _i1.DatabaseSession session,
    TauxCommission row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TauxCommission>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<TauxCommission>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<TauxCommissionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TauxCommission>(
      where: where(TauxCommission.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<TauxCommissionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TauxCommission>(
      where: where?.call(TauxCommission.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [TauxCommission] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<TauxCommissionTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<TauxCommission>(
      where: where(TauxCommission.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

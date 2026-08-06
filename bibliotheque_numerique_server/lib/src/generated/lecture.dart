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

abstract class Lecture
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Lecture._({
    this.id,
    DateTime? datePremiereLecture,
    required this.pourcentageLu,
    required this.moisAnnee,
    this.montantCommission,
    required this.lecteurId,
    required this.livreId,
  }) : datePremiereLecture = datePremiereLecture ?? DateTime.now();

  factory Lecture({
    int? id,
    DateTime? datePremiereLecture,
    required int pourcentageLu,
    required String moisAnnee,
    double? montantCommission,
    required int lecteurId,
    required int livreId,
  }) = _LectureImpl;

  factory Lecture.fromJson(Map<String, dynamic> jsonSerialization) {
    return Lecture(
      id: jsonSerialization['id'] as int?,
      datePremiereLecture: jsonSerialization['datePremiereLecture'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['datePremiereLecture'],
            ),
      pourcentageLu: jsonSerialization['pourcentageLu'] as int,
      moisAnnee: jsonSerialization['moisAnnee'] as String,
      montantCommission: (jsonSerialization['montantCommission'] as num?)
          ?.toDouble(),
      lecteurId: jsonSerialization['lecteurId'] as int,
      livreId: jsonSerialization['livreId'] as int,
    );
  }

  static final t = LectureTable();

  static const db = LectureRepository._();

  @override
  int? id;

  DateTime datePremiereLecture;

  int pourcentageLu;

  String moisAnnee;

  double? montantCommission;

  int lecteurId;

  int livreId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Lecture]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Lecture copyWith({
    int? id,
    DateTime? datePremiereLecture,
    int? pourcentageLu,
    String? moisAnnee,
    double? montantCommission,
    int? lecteurId,
    int? livreId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Lecture',
      if (id != null) 'id': id,
      'datePremiereLecture': datePremiereLecture.toJson(),
      'pourcentageLu': pourcentageLu,
      'moisAnnee': moisAnnee,
      if (montantCommission != null) 'montantCommission': montantCommission,
      'lecteurId': lecteurId,
      'livreId': livreId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Lecture',
      if (id != null) 'id': id,
      'datePremiereLecture': datePremiereLecture.toJson(),
      'pourcentageLu': pourcentageLu,
      'moisAnnee': moisAnnee,
      if (montantCommission != null) 'montantCommission': montantCommission,
      'lecteurId': lecteurId,
      'livreId': livreId,
    };
  }

  static LectureInclude include() {
    return LectureInclude._();
  }

  static LectureIncludeList includeList({
    _i1.WhereExpressionBuilder<LectureTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LectureTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LectureTable>? orderByList,
    LectureInclude? include,
  }) {
    return LectureIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Lecture.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Lecture.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LectureImpl extends Lecture {
  _LectureImpl({
    int? id,
    DateTime? datePremiereLecture,
    required int pourcentageLu,
    required String moisAnnee,
    double? montantCommission,
    required int lecteurId,
    required int livreId,
  }) : super._(
         id: id,
         datePremiereLecture: datePremiereLecture,
         pourcentageLu: pourcentageLu,
         moisAnnee: moisAnnee,
         montantCommission: montantCommission,
         lecteurId: lecteurId,
         livreId: livreId,
       );

  /// Returns a shallow copy of this [Lecture]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Lecture copyWith({
    Object? id = _Undefined,
    DateTime? datePremiereLecture,
    int? pourcentageLu,
    String? moisAnnee,
    Object? montantCommission = _Undefined,
    int? lecteurId,
    int? livreId,
  }) {
    return Lecture(
      id: id is int? ? id : this.id,
      datePremiereLecture: datePremiereLecture ?? this.datePremiereLecture,
      pourcentageLu: pourcentageLu ?? this.pourcentageLu,
      moisAnnee: moisAnnee ?? this.moisAnnee,
      montantCommission: montantCommission is double?
          ? montantCommission
          : this.montantCommission,
      lecteurId: lecteurId ?? this.lecteurId,
      livreId: livreId ?? this.livreId,
    );
  }
}

class LectureUpdateTable extends _i1.UpdateTable<LectureTable> {
  LectureUpdateTable(super.table);

  _i1.ColumnValue<DateTime, DateTime> datePremiereLecture(DateTime value) =>
      _i1.ColumnValue(
        table.datePremiereLecture,
        value,
      );

  _i1.ColumnValue<int, int> pourcentageLu(int value) => _i1.ColumnValue(
    table.pourcentageLu,
    value,
  );

  _i1.ColumnValue<String, String> moisAnnee(String value) => _i1.ColumnValue(
    table.moisAnnee,
    value,
  );

  _i1.ColumnValue<double, double> montantCommission(double? value) =>
      _i1.ColumnValue(
        table.montantCommission,
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

class LectureTable extends _i1.Table<int?> {
  LectureTable({super.tableRelation}) : super(tableName: 'lecture') {
    updateTable = LectureUpdateTable(this);
    datePremiereLecture = _i1.ColumnDateTime(
      'datePremiereLecture',
      this,
      hasDefault: true,
    );
    pourcentageLu = _i1.ColumnInt(
      'pourcentageLu',
      this,
    );
    moisAnnee = _i1.ColumnString(
      'moisAnnee',
      this,
    );
    montantCommission = _i1.ColumnDouble(
      'montantCommission',
      this,
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

  late final LectureUpdateTable updateTable;

  late final _i1.ColumnDateTime datePremiereLecture;

  late final _i1.ColumnInt pourcentageLu;

  late final _i1.ColumnString moisAnnee;

  late final _i1.ColumnDouble montantCommission;

  late final _i1.ColumnInt lecteurId;

  late final _i1.ColumnInt livreId;

  @override
  List<_i1.Column> get columns => [
    id,
    datePremiereLecture,
    pourcentageLu,
    moisAnnee,
    montantCommission,
    lecteurId,
    livreId,
  ];
}

class LectureInclude extends _i1.IncludeObject {
  LectureInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Lecture.t;
}

class LectureIncludeList extends _i1.IncludeList {
  LectureIncludeList._({
    _i1.WhereExpressionBuilder<LectureTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Lecture.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Lecture.t;
}

class LectureRepository {
  const LectureRepository._();

  /// Returns a list of [Lecture]s matching the given query parameters.
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
  Future<List<Lecture>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<LectureTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LectureTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LectureTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Lecture>(
      where: where?.call(Lecture.t),
      orderBy: orderBy?.call(Lecture.t),
      orderByList: orderByList?.call(Lecture.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Lecture] matching the given query parameters.
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
  Future<Lecture?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<LectureTable>? where,
    int? offset,
    _i1.OrderByBuilder<LectureTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LectureTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Lecture>(
      where: where?.call(Lecture.t),
      orderBy: orderBy?.call(Lecture.t),
      orderByList: orderByList?.call(Lecture.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Lecture] by its [id] or null if no such row exists.
  Future<Lecture?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Lecture>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Lecture]s in the list and returns the inserted rows.
  ///
  /// The returned [Lecture]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Lecture>> insert(
    _i1.DatabaseSession session,
    List<Lecture> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Lecture>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Lecture] and returns the inserted row.
  ///
  /// The returned [Lecture] will have its `id` field set.
  Future<Lecture> insertRow(
    _i1.DatabaseSession session,
    Lecture row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Lecture>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Lecture]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Lecture>> update(
    _i1.DatabaseSession session,
    List<Lecture> rows, {
    _i1.ColumnSelections<LectureTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Lecture>(
      rows,
      columns: columns?.call(Lecture.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Lecture]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Lecture> updateRow(
    _i1.DatabaseSession session,
    Lecture row, {
    _i1.ColumnSelections<LectureTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Lecture>(
      row,
      columns: columns?.call(Lecture.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Lecture] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Lecture?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<LectureUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Lecture>(
      id,
      columnValues: columnValues(Lecture.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Lecture]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Lecture>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<LectureUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<LectureTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LectureTable>? orderBy,
    _i1.OrderByListBuilder<LectureTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Lecture>(
      columnValues: columnValues(Lecture.t.updateTable),
      where: where(Lecture.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Lecture.t),
      orderByList: orderByList?.call(Lecture.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Lecture]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Lecture>> delete(
    _i1.DatabaseSession session,
    List<Lecture> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Lecture>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Lecture].
  Future<Lecture> deleteRow(
    _i1.DatabaseSession session,
    Lecture row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Lecture>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Lecture>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<LectureTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Lecture>(
      where: where(Lecture.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<LectureTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Lecture>(
      where: where?.call(Lecture.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Lecture] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<LectureTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Lecture>(
      where: where(Lecture.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

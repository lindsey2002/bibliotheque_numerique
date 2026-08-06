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

abstract class Abonnement
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Abonnement._({
    this.id,
    required this.type,
    DateTime? dateDebut,
    this.dateFin,
    required this.prix,
    bool? essaiPremiumActif,
    this.dateFinEssaiPremium,
    required this.lecteurId,
  }) : dateDebut = dateDebut ?? DateTime.now(),
       essaiPremiumActif = essaiPremiumActif ?? false;

  factory Abonnement({
    int? id,
    required _i2.TypeAbonnement type,
    DateTime? dateDebut,
    DateTime? dateFin,
    required double prix,
    bool? essaiPremiumActif,
    DateTime? dateFinEssaiPremium,
    required int lecteurId,
  }) = _AbonnementImpl;

  factory Abonnement.fromJson(Map<String, dynamic> jsonSerialization) {
    return Abonnement(
      id: jsonSerialization['id'] as int?,
      type: _i2.TypeAbonnement.fromJson((jsonSerialization['type'] as String)),
      dateDebut: jsonSerialization['dateDebut'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateDebut']),
      dateFin: jsonSerialization['dateFin'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateFin']),
      prix: (jsonSerialization['prix'] as num).toDouble(),
      essaiPremiumActif: jsonSerialization['essaiPremiumActif'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(
              jsonSerialization['essaiPremiumActif'],
            ),
      dateFinEssaiPremium: jsonSerialization['dateFinEssaiPremium'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateFinEssaiPremium'],
            ),
      lecteurId: jsonSerialization['lecteurId'] as int,
    );
  }

  static final t = AbonnementTable();

  static const db = AbonnementRepository._();

  @override
  int? id;

  _i2.TypeAbonnement type;

  DateTime dateDebut;

  DateTime? dateFin;

  double prix;

  bool essaiPremiumActif;

  DateTime? dateFinEssaiPremium;

  int lecteurId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Abonnement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Abonnement copyWith({
    int? id,
    _i2.TypeAbonnement? type,
    DateTime? dateDebut,
    DateTime? dateFin,
    double? prix,
    bool? essaiPremiumActif,
    DateTime? dateFinEssaiPremium,
    int? lecteurId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Abonnement',
      if (id != null) 'id': id,
      'type': type.toJson(),
      'dateDebut': dateDebut.toJson(),
      if (dateFin != null) 'dateFin': dateFin?.toJson(),
      'prix': prix,
      'essaiPremiumActif': essaiPremiumActif,
      if (dateFinEssaiPremium != null)
        'dateFinEssaiPremium': dateFinEssaiPremium?.toJson(),
      'lecteurId': lecteurId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Abonnement',
      if (id != null) 'id': id,
      'type': type.toJson(),
      'dateDebut': dateDebut.toJson(),
      if (dateFin != null) 'dateFin': dateFin?.toJson(),
      'prix': prix,
      'essaiPremiumActif': essaiPremiumActif,
      if (dateFinEssaiPremium != null)
        'dateFinEssaiPremium': dateFinEssaiPremium?.toJson(),
      'lecteurId': lecteurId,
    };
  }

  static AbonnementInclude include() {
    return AbonnementInclude._();
  }

  static AbonnementIncludeList includeList({
    _i1.WhereExpressionBuilder<AbonnementTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AbonnementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AbonnementTable>? orderByList,
    AbonnementInclude? include,
  }) {
    return AbonnementIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Abonnement.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Abonnement.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AbonnementImpl extends Abonnement {
  _AbonnementImpl({
    int? id,
    required _i2.TypeAbonnement type,
    DateTime? dateDebut,
    DateTime? dateFin,
    required double prix,
    bool? essaiPremiumActif,
    DateTime? dateFinEssaiPremium,
    required int lecteurId,
  }) : super._(
         id: id,
         type: type,
         dateDebut: dateDebut,
         dateFin: dateFin,
         prix: prix,
         essaiPremiumActif: essaiPremiumActif,
         dateFinEssaiPremium: dateFinEssaiPremium,
         lecteurId: lecteurId,
       );

  /// Returns a shallow copy of this [Abonnement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Abonnement copyWith({
    Object? id = _Undefined,
    _i2.TypeAbonnement? type,
    DateTime? dateDebut,
    Object? dateFin = _Undefined,
    double? prix,
    bool? essaiPremiumActif,
    Object? dateFinEssaiPremium = _Undefined,
    int? lecteurId,
  }) {
    return Abonnement(
      id: id is int? ? id : this.id,
      type: type ?? this.type,
      dateDebut: dateDebut ?? this.dateDebut,
      dateFin: dateFin is DateTime? ? dateFin : this.dateFin,
      prix: prix ?? this.prix,
      essaiPremiumActif: essaiPremiumActif ?? this.essaiPremiumActif,
      dateFinEssaiPremium: dateFinEssaiPremium is DateTime?
          ? dateFinEssaiPremium
          : this.dateFinEssaiPremium,
      lecteurId: lecteurId ?? this.lecteurId,
    );
  }
}

class AbonnementUpdateTable extends _i1.UpdateTable<AbonnementTable> {
  AbonnementUpdateTable(super.table);

  _i1.ColumnValue<_i2.TypeAbonnement, _i2.TypeAbonnement> type(
    _i2.TypeAbonnement value,
  ) => _i1.ColumnValue(
    table.type,
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

  _i1.ColumnValue<double, double> prix(double value) => _i1.ColumnValue(
    table.prix,
    value,
  );

  _i1.ColumnValue<bool, bool> essaiPremiumActif(bool value) => _i1.ColumnValue(
    table.essaiPremiumActif,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dateFinEssaiPremium(DateTime? value) =>
      _i1.ColumnValue(
        table.dateFinEssaiPremium,
        value,
      );

  _i1.ColumnValue<int, int> lecteurId(int value) => _i1.ColumnValue(
    table.lecteurId,
    value,
  );
}

class AbonnementTable extends _i1.Table<int?> {
  AbonnementTable({super.tableRelation}) : super(tableName: 'abonnement') {
    updateTable = AbonnementUpdateTable(this);
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byName,
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
    prix = _i1.ColumnDouble(
      'prix',
      this,
    );
    essaiPremiumActif = _i1.ColumnBool(
      'essaiPremiumActif',
      this,
      hasDefault: true,
    );
    dateFinEssaiPremium = _i1.ColumnDateTime(
      'dateFinEssaiPremium',
      this,
    );
    lecteurId = _i1.ColumnInt(
      'lecteurId',
      this,
    );
  }

  late final AbonnementUpdateTable updateTable;

  late final _i1.ColumnEnum<_i2.TypeAbonnement> type;

  late final _i1.ColumnDateTime dateDebut;

  late final _i1.ColumnDateTime dateFin;

  late final _i1.ColumnDouble prix;

  late final _i1.ColumnBool essaiPremiumActif;

  late final _i1.ColumnDateTime dateFinEssaiPremium;

  late final _i1.ColumnInt lecteurId;

  @override
  List<_i1.Column> get columns => [
    id,
    type,
    dateDebut,
    dateFin,
    prix,
    essaiPremiumActif,
    dateFinEssaiPremium,
    lecteurId,
  ];
}

class AbonnementInclude extends _i1.IncludeObject {
  AbonnementInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Abonnement.t;
}

class AbonnementIncludeList extends _i1.IncludeList {
  AbonnementIncludeList._({
    _i1.WhereExpressionBuilder<AbonnementTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Abonnement.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Abonnement.t;
}

class AbonnementRepository {
  const AbonnementRepository._();

  /// Returns a list of [Abonnement]s matching the given query parameters.
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
  Future<List<Abonnement>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AbonnementTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AbonnementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AbonnementTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Abonnement>(
      where: where?.call(Abonnement.t),
      orderBy: orderBy?.call(Abonnement.t),
      orderByList: orderByList?.call(Abonnement.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Abonnement] matching the given query parameters.
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
  Future<Abonnement?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AbonnementTable>? where,
    int? offset,
    _i1.OrderByBuilder<AbonnementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AbonnementTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Abonnement>(
      where: where?.call(Abonnement.t),
      orderBy: orderBy?.call(Abonnement.t),
      orderByList: orderByList?.call(Abonnement.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Abonnement] by its [id] or null if no such row exists.
  Future<Abonnement?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Abonnement>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Abonnement]s in the list and returns the inserted rows.
  ///
  /// The returned [Abonnement]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Abonnement>> insert(
    _i1.DatabaseSession session,
    List<Abonnement> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Abonnement>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Abonnement] and returns the inserted row.
  ///
  /// The returned [Abonnement] will have its `id` field set.
  Future<Abonnement> insertRow(
    _i1.DatabaseSession session,
    Abonnement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Abonnement>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Abonnement]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Abonnement>> update(
    _i1.DatabaseSession session,
    List<Abonnement> rows, {
    _i1.ColumnSelections<AbonnementTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Abonnement>(
      rows,
      columns: columns?.call(Abonnement.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Abonnement]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Abonnement> updateRow(
    _i1.DatabaseSession session,
    Abonnement row, {
    _i1.ColumnSelections<AbonnementTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Abonnement>(
      row,
      columns: columns?.call(Abonnement.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Abonnement] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Abonnement?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<AbonnementUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Abonnement>(
      id,
      columnValues: columnValues(Abonnement.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Abonnement]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Abonnement>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<AbonnementUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<AbonnementTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AbonnementTable>? orderBy,
    _i1.OrderByListBuilder<AbonnementTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Abonnement>(
      columnValues: columnValues(Abonnement.t.updateTable),
      where: where(Abonnement.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Abonnement.t),
      orderByList: orderByList?.call(Abonnement.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Abonnement]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Abonnement>> delete(
    _i1.DatabaseSession session,
    List<Abonnement> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Abonnement>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Abonnement].
  Future<Abonnement> deleteRow(
    _i1.DatabaseSession session,
    Abonnement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Abonnement>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Abonnement>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AbonnementTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Abonnement>(
      where: where(Abonnement.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<AbonnementTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Abonnement>(
      where: where?.call(Abonnement.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Abonnement] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<AbonnementTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Abonnement>(
      where: where(Abonnement.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

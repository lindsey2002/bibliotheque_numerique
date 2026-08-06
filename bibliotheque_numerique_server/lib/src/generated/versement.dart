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

abstract class Versement
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Versement._({
    this.id,
    required this.mois,
    required this.montantBrut,
    required this.montantNet,
    required this.nbLecteursUniques,
    required this.auteurId,
    required this.tauxId,
  });

  factory Versement({
    int? id,
    required String mois,
    required double montantBrut,
    required double montantNet,
    required int nbLecteursUniques,
    required int auteurId,
    required int tauxId,
  }) = _VersementImpl;

  factory Versement.fromJson(Map<String, dynamic> jsonSerialization) {
    return Versement(
      id: jsonSerialization['id'] as int?,
      mois: jsonSerialization['mois'] as String,
      montantBrut: (jsonSerialization['montantBrut'] as num).toDouble(),
      montantNet: (jsonSerialization['montantNet'] as num).toDouble(),
      nbLecteursUniques: jsonSerialization['nbLecteursUniques'] as int,
      auteurId: jsonSerialization['auteurId'] as int,
      tauxId: jsonSerialization['tauxId'] as int,
    );
  }

  static final t = VersementTable();

  static const db = VersementRepository._();

  @override
  int? id;

  String mois;

  double montantBrut;

  double montantNet;

  int nbLecteursUniques;

  int auteurId;

  int tauxId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Versement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Versement copyWith({
    int? id,
    String? mois,
    double? montantBrut,
    double? montantNet,
    int? nbLecteursUniques,
    int? auteurId,
    int? tauxId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Versement',
      if (id != null) 'id': id,
      'mois': mois,
      'montantBrut': montantBrut,
      'montantNet': montantNet,
      'nbLecteursUniques': nbLecteursUniques,
      'auteurId': auteurId,
      'tauxId': tauxId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Versement',
      if (id != null) 'id': id,
      'mois': mois,
      'montantBrut': montantBrut,
      'montantNet': montantNet,
      'nbLecteursUniques': nbLecteursUniques,
      'auteurId': auteurId,
      'tauxId': tauxId,
    };
  }

  static VersementInclude include() {
    return VersementInclude._();
  }

  static VersementIncludeList includeList({
    _i1.WhereExpressionBuilder<VersementTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VersementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VersementTable>? orderByList,
    VersementInclude? include,
  }) {
    return VersementIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Versement.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Versement.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _VersementImpl extends Versement {
  _VersementImpl({
    int? id,
    required String mois,
    required double montantBrut,
    required double montantNet,
    required int nbLecteursUniques,
    required int auteurId,
    required int tauxId,
  }) : super._(
         id: id,
         mois: mois,
         montantBrut: montantBrut,
         montantNet: montantNet,
         nbLecteursUniques: nbLecteursUniques,
         auteurId: auteurId,
         tauxId: tauxId,
       );

  /// Returns a shallow copy of this [Versement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Versement copyWith({
    Object? id = _Undefined,
    String? mois,
    double? montantBrut,
    double? montantNet,
    int? nbLecteursUniques,
    int? auteurId,
    int? tauxId,
  }) {
    return Versement(
      id: id is int? ? id : this.id,
      mois: mois ?? this.mois,
      montantBrut: montantBrut ?? this.montantBrut,
      montantNet: montantNet ?? this.montantNet,
      nbLecteursUniques: nbLecteursUniques ?? this.nbLecteursUniques,
      auteurId: auteurId ?? this.auteurId,
      tauxId: tauxId ?? this.tauxId,
    );
  }
}

class VersementUpdateTable extends _i1.UpdateTable<VersementTable> {
  VersementUpdateTable(super.table);

  _i1.ColumnValue<String, String> mois(String value) => _i1.ColumnValue(
    table.mois,
    value,
  );

  _i1.ColumnValue<double, double> montantBrut(double value) => _i1.ColumnValue(
    table.montantBrut,
    value,
  );

  _i1.ColumnValue<double, double> montantNet(double value) => _i1.ColumnValue(
    table.montantNet,
    value,
  );

  _i1.ColumnValue<int, int> nbLecteursUniques(int value) => _i1.ColumnValue(
    table.nbLecteursUniques,
    value,
  );

  _i1.ColumnValue<int, int> auteurId(int value) => _i1.ColumnValue(
    table.auteurId,
    value,
  );

  _i1.ColumnValue<int, int> tauxId(int value) => _i1.ColumnValue(
    table.tauxId,
    value,
  );
}

class VersementTable extends _i1.Table<int?> {
  VersementTable({super.tableRelation}) : super(tableName: 'versement') {
    updateTable = VersementUpdateTable(this);
    mois = _i1.ColumnString(
      'mois',
      this,
    );
    montantBrut = _i1.ColumnDouble(
      'montantBrut',
      this,
    );
    montantNet = _i1.ColumnDouble(
      'montantNet',
      this,
    );
    nbLecteursUniques = _i1.ColumnInt(
      'nbLecteursUniques',
      this,
    );
    auteurId = _i1.ColumnInt(
      'auteurId',
      this,
    );
    tauxId = _i1.ColumnInt(
      'tauxId',
      this,
    );
  }

  late final VersementUpdateTable updateTable;

  late final _i1.ColumnString mois;

  late final _i1.ColumnDouble montantBrut;

  late final _i1.ColumnDouble montantNet;

  late final _i1.ColumnInt nbLecteursUniques;

  late final _i1.ColumnInt auteurId;

  late final _i1.ColumnInt tauxId;

  @override
  List<_i1.Column> get columns => [
    id,
    mois,
    montantBrut,
    montantNet,
    nbLecteursUniques,
    auteurId,
    tauxId,
  ];
}

class VersementInclude extends _i1.IncludeObject {
  VersementInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Versement.t;
}

class VersementIncludeList extends _i1.IncludeList {
  VersementIncludeList._({
    _i1.WhereExpressionBuilder<VersementTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Versement.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Versement.t;
}

class VersementRepository {
  const VersementRepository._();

  /// Returns a list of [Versement]s matching the given query parameters.
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
  Future<List<Versement>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<VersementTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VersementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VersementTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Versement>(
      where: where?.call(Versement.t),
      orderBy: orderBy?.call(Versement.t),
      orderByList: orderByList?.call(Versement.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Versement] matching the given query parameters.
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
  Future<Versement?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<VersementTable>? where,
    int? offset,
    _i1.OrderByBuilder<VersementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VersementTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Versement>(
      where: where?.call(Versement.t),
      orderBy: orderBy?.call(Versement.t),
      orderByList: orderByList?.call(Versement.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Versement] by its [id] or null if no such row exists.
  Future<Versement?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Versement>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Versement]s in the list and returns the inserted rows.
  ///
  /// The returned [Versement]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Versement>> insert(
    _i1.DatabaseSession session,
    List<Versement> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Versement>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Versement] and returns the inserted row.
  ///
  /// The returned [Versement] will have its `id` field set.
  Future<Versement> insertRow(
    _i1.DatabaseSession session,
    Versement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Versement>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Versement]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Versement>> update(
    _i1.DatabaseSession session,
    List<Versement> rows, {
    _i1.ColumnSelections<VersementTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Versement>(
      rows,
      columns: columns?.call(Versement.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Versement]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Versement> updateRow(
    _i1.DatabaseSession session,
    Versement row, {
    _i1.ColumnSelections<VersementTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Versement>(
      row,
      columns: columns?.call(Versement.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Versement] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Versement?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<VersementUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Versement>(
      id,
      columnValues: columnValues(Versement.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Versement]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Versement>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<VersementUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<VersementTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VersementTable>? orderBy,
    _i1.OrderByListBuilder<VersementTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Versement>(
      columnValues: columnValues(Versement.t.updateTable),
      where: where(Versement.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Versement.t),
      orderByList: orderByList?.call(Versement.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Versement]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Versement>> delete(
    _i1.DatabaseSession session,
    List<Versement> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Versement>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Versement].
  Future<Versement> deleteRow(
    _i1.DatabaseSession session,
    Versement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Versement>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Versement>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<VersementTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Versement>(
      where: where(Versement.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<VersementTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Versement>(
      where: where?.call(Versement.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Versement] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<VersementTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Versement>(
      where: where(Versement.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

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
import 'statutprix.dart' as _i2;

abstract class ChangementStatut
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  ChangementStatut._({
    this.id,
    required this.ancienStatut,
    required this.nouveauStatut,
    this.messageAdmin,
    this.reponseAuteur,
    DateTime? dateProposition,
    this.dateReponse,
    required this.livreId,
    required this.auteurId,
    this.proposeParId,
  }) : dateProposition = dateProposition ?? DateTime.now();

  factory ChangementStatut({
    int? id,
    required _i2.StatutPrix ancienStatut,
    required _i2.StatutPrix nouveauStatut,
    String? messageAdmin,
    bool? reponseAuteur,
    DateTime? dateProposition,
    DateTime? dateReponse,
    required int livreId,
    required int auteurId,
    int? proposeParId,
  }) = _ChangementStatutImpl;

  factory ChangementStatut.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChangementStatut(
      id: jsonSerialization['id'] as int?,
      ancienStatut: _i2.StatutPrix.fromJson(
        (jsonSerialization['ancienStatut'] as String),
      ),
      nouveauStatut: _i2.StatutPrix.fromJson(
        (jsonSerialization['nouveauStatut'] as String),
      ),
      messageAdmin: jsonSerialization['messageAdmin'] as String?,
      reponseAuteur: jsonSerialization['reponseAuteur'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['reponseAuteur']),
      dateProposition: jsonSerialization['dateProposition'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateProposition'],
            ),
      dateReponse: jsonSerialization['dateReponse'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateReponse'],
            ),
      livreId: jsonSerialization['livreId'] as int,
      auteurId: jsonSerialization['auteurId'] as int,
      proposeParId: jsonSerialization['proposeParId'] as int?,
    );
  }

  static final t = ChangementStatutTable();

  static const db = ChangementStatutRepository._();

  @override
  int? id;

  _i2.StatutPrix ancienStatut;

  _i2.StatutPrix nouveauStatut;

  String? messageAdmin;

  bool? reponseAuteur;

  DateTime dateProposition;

  DateTime? dateReponse;

  int livreId;

  int auteurId;

  int? proposeParId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [ChangementStatut]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ChangementStatut copyWith({
    int? id,
    _i2.StatutPrix? ancienStatut,
    _i2.StatutPrix? nouveauStatut,
    String? messageAdmin,
    bool? reponseAuteur,
    DateTime? dateProposition,
    DateTime? dateReponse,
    int? livreId,
    int? auteurId,
    int? proposeParId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ChangementStatut',
      if (id != null) 'id': id,
      'ancienStatut': ancienStatut.toJson(),
      'nouveauStatut': nouveauStatut.toJson(),
      if (messageAdmin != null) 'messageAdmin': messageAdmin,
      if (reponseAuteur != null) 'reponseAuteur': reponseAuteur,
      'dateProposition': dateProposition.toJson(),
      if (dateReponse != null) 'dateReponse': dateReponse?.toJson(),
      'livreId': livreId,
      'auteurId': auteurId,
      if (proposeParId != null) 'proposeParId': proposeParId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ChangementStatut',
      if (id != null) 'id': id,
      'ancienStatut': ancienStatut.toJson(),
      'nouveauStatut': nouveauStatut.toJson(),
      if (messageAdmin != null) 'messageAdmin': messageAdmin,
      if (reponseAuteur != null) 'reponseAuteur': reponseAuteur,
      'dateProposition': dateProposition.toJson(),
      if (dateReponse != null) 'dateReponse': dateReponse?.toJson(),
      'livreId': livreId,
      'auteurId': auteurId,
      if (proposeParId != null) 'proposeParId': proposeParId,
    };
  }

  static ChangementStatutInclude include() {
    return ChangementStatutInclude._();
  }

  static ChangementStatutIncludeList includeList({
    _i1.WhereExpressionBuilder<ChangementStatutTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChangementStatutTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChangementStatutTable>? orderByList,
    ChangementStatutInclude? include,
  }) {
    return ChangementStatutIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChangementStatut.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ChangementStatut.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChangementStatutImpl extends ChangementStatut {
  _ChangementStatutImpl({
    int? id,
    required _i2.StatutPrix ancienStatut,
    required _i2.StatutPrix nouveauStatut,
    String? messageAdmin,
    bool? reponseAuteur,
    DateTime? dateProposition,
    DateTime? dateReponse,
    required int livreId,
    required int auteurId,
    int? proposeParId,
  }) : super._(
         id: id,
         ancienStatut: ancienStatut,
         nouveauStatut: nouveauStatut,
         messageAdmin: messageAdmin,
         reponseAuteur: reponseAuteur,
         dateProposition: dateProposition,
         dateReponse: dateReponse,
         livreId: livreId,
         auteurId: auteurId,
         proposeParId: proposeParId,
       );

  /// Returns a shallow copy of this [ChangementStatut]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ChangementStatut copyWith({
    Object? id = _Undefined,
    _i2.StatutPrix? ancienStatut,
    _i2.StatutPrix? nouveauStatut,
    Object? messageAdmin = _Undefined,
    Object? reponseAuteur = _Undefined,
    DateTime? dateProposition,
    Object? dateReponse = _Undefined,
    int? livreId,
    int? auteurId,
    Object? proposeParId = _Undefined,
  }) {
    return ChangementStatut(
      id: id is int? ? id : this.id,
      ancienStatut: ancienStatut ?? this.ancienStatut,
      nouveauStatut: nouveauStatut ?? this.nouveauStatut,
      messageAdmin: messageAdmin is String? ? messageAdmin : this.messageAdmin,
      reponseAuteur: reponseAuteur is bool?
          ? reponseAuteur
          : this.reponseAuteur,
      dateProposition: dateProposition ?? this.dateProposition,
      dateReponse: dateReponse is DateTime? ? dateReponse : this.dateReponse,
      livreId: livreId ?? this.livreId,
      auteurId: auteurId ?? this.auteurId,
      proposeParId: proposeParId is int? ? proposeParId : this.proposeParId,
    );
  }
}

class ChangementStatutUpdateTable
    extends _i1.UpdateTable<ChangementStatutTable> {
  ChangementStatutUpdateTable(super.table);

  _i1.ColumnValue<_i2.StatutPrix, _i2.StatutPrix> ancienStatut(
    _i2.StatutPrix value,
  ) => _i1.ColumnValue(
    table.ancienStatut,
    value,
  );

  _i1.ColumnValue<_i2.StatutPrix, _i2.StatutPrix> nouveauStatut(
    _i2.StatutPrix value,
  ) => _i1.ColumnValue(
    table.nouveauStatut,
    value,
  );

  _i1.ColumnValue<String, String> messageAdmin(String? value) =>
      _i1.ColumnValue(
        table.messageAdmin,
        value,
      );

  _i1.ColumnValue<bool, bool> reponseAuteur(bool? value) => _i1.ColumnValue(
    table.reponseAuteur,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dateProposition(DateTime value) =>
      _i1.ColumnValue(
        table.dateProposition,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> dateReponse(DateTime? value) =>
      _i1.ColumnValue(
        table.dateReponse,
        value,
      );

  _i1.ColumnValue<int, int> livreId(int value) => _i1.ColumnValue(
    table.livreId,
    value,
  );

  _i1.ColumnValue<int, int> auteurId(int value) => _i1.ColumnValue(
    table.auteurId,
    value,
  );

  _i1.ColumnValue<int, int> proposeParId(int? value) => _i1.ColumnValue(
    table.proposeParId,
    value,
  );
}

class ChangementStatutTable extends _i1.Table<int?> {
  ChangementStatutTable({super.tableRelation})
    : super(tableName: 'changement_statut') {
    updateTable = ChangementStatutUpdateTable(this);
    ancienStatut = _i1.ColumnEnum(
      'ancienStatut',
      this,
      _i1.EnumSerialization.byName,
    );
    nouveauStatut = _i1.ColumnEnum(
      'nouveauStatut',
      this,
      _i1.EnumSerialization.byName,
    );
    messageAdmin = _i1.ColumnString(
      'messageAdmin',
      this,
    );
    reponseAuteur = _i1.ColumnBool(
      'reponseAuteur',
      this,
    );
    dateProposition = _i1.ColumnDateTime(
      'dateProposition',
      this,
      hasDefault: true,
    );
    dateReponse = _i1.ColumnDateTime(
      'dateReponse',
      this,
    );
    livreId = _i1.ColumnInt(
      'livreId',
      this,
    );
    auteurId = _i1.ColumnInt(
      'auteurId',
      this,
    );
    proposeParId = _i1.ColumnInt(
      'proposeParId',
      this,
    );
  }

  late final ChangementStatutUpdateTable updateTable;

  late final _i1.ColumnEnum<_i2.StatutPrix> ancienStatut;

  late final _i1.ColumnEnum<_i2.StatutPrix> nouveauStatut;

  late final _i1.ColumnString messageAdmin;

  late final _i1.ColumnBool reponseAuteur;

  late final _i1.ColumnDateTime dateProposition;

  late final _i1.ColumnDateTime dateReponse;

  late final _i1.ColumnInt livreId;

  late final _i1.ColumnInt auteurId;

  late final _i1.ColumnInt proposeParId;

  @override
  List<_i1.Column> get columns => [
    id,
    ancienStatut,
    nouveauStatut,
    messageAdmin,
    reponseAuteur,
    dateProposition,
    dateReponse,
    livreId,
    auteurId,
    proposeParId,
  ];
}

class ChangementStatutInclude extends _i1.IncludeObject {
  ChangementStatutInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ChangementStatut.t;
}

class ChangementStatutIncludeList extends _i1.IncludeList {
  ChangementStatutIncludeList._({
    _i1.WhereExpressionBuilder<ChangementStatutTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ChangementStatut.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ChangementStatut.t;
}

class ChangementStatutRepository {
  const ChangementStatutRepository._();

  /// Returns a list of [ChangementStatut]s matching the given query parameters.
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
  Future<List<ChangementStatut>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ChangementStatutTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChangementStatutTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChangementStatutTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ChangementStatut>(
      where: where?.call(ChangementStatut.t),
      orderBy: orderBy?.call(ChangementStatut.t),
      orderByList: orderByList?.call(ChangementStatut.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ChangementStatut] matching the given query parameters.
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
  Future<ChangementStatut?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ChangementStatutTable>? where,
    int? offset,
    _i1.OrderByBuilder<ChangementStatutTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChangementStatutTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ChangementStatut>(
      where: where?.call(ChangementStatut.t),
      orderBy: orderBy?.call(ChangementStatut.t),
      orderByList: orderByList?.call(ChangementStatut.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ChangementStatut] by its [id] or null if no such row exists.
  Future<ChangementStatut?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ChangementStatut>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ChangementStatut]s in the list and returns the inserted rows.
  ///
  /// The returned [ChangementStatut]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<ChangementStatut>> insert(
    _i1.DatabaseSession session,
    List<ChangementStatut> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<ChangementStatut>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [ChangementStatut] and returns the inserted row.
  ///
  /// The returned [ChangementStatut] will have its `id` field set.
  Future<ChangementStatut> insertRow(
    _i1.DatabaseSession session,
    ChangementStatut row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ChangementStatut>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ChangementStatut]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ChangementStatut>> update(
    _i1.DatabaseSession session,
    List<ChangementStatut> rows, {
    _i1.ColumnSelections<ChangementStatutTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ChangementStatut>(
      rows,
      columns: columns?.call(ChangementStatut.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ChangementStatut]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ChangementStatut> updateRow(
    _i1.DatabaseSession session,
    ChangementStatut row, {
    _i1.ColumnSelections<ChangementStatutTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ChangementStatut>(
      row,
      columns: columns?.call(ChangementStatut.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ChangementStatut] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ChangementStatut?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<ChangementStatutUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ChangementStatut>(
      id,
      columnValues: columnValues(ChangementStatut.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ChangementStatut]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ChangementStatut>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ChangementStatutUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<ChangementStatutTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChangementStatutTable>? orderBy,
    _i1.OrderByListBuilder<ChangementStatutTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ChangementStatut>(
      columnValues: columnValues(ChangementStatut.t.updateTable),
      where: where(ChangementStatut.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChangementStatut.t),
      orderByList: orderByList?.call(ChangementStatut.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ChangementStatut]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ChangementStatut>> delete(
    _i1.DatabaseSession session,
    List<ChangementStatut> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ChangementStatut>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ChangementStatut].
  Future<ChangementStatut> deleteRow(
    _i1.DatabaseSession session,
    ChangementStatut row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ChangementStatut>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ChangementStatut>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ChangementStatutTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ChangementStatut>(
      where: where(ChangementStatut.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ChangementStatutTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ChangementStatut>(
      where: where?.call(ChangementStatut.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ChangementStatut] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ChangementStatutTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ChangementStatut>(
      where: where(ChangementStatut.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

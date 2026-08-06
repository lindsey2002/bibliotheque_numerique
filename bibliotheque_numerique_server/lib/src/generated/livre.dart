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
import 'modeaudio.dart' as _i2;
import 'statutprix.dart' as _i3;

abstract class Livre implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Livre._({
    this.id,
    required this.titre,
    this.description,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    required this.auteurId,
    required this.categorieId,
    required this.langueId,
    this.ambianceId,
  }) : dateSoumission = dateSoumission ?? DateTime.now(),
       modeAudio = modeAudio ?? _i2.ModeAudio.aucun,
       statutPrix = statutPrix ?? _i3.StatutPrix.gratuit;

  factory Livre({
    int? id,
    required String titre,
    String? description,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    required int auteurId,
    required int categorieId,
    required int langueId,
    int? ambianceId,
  }) = _LivreImpl;

  factory Livre.fromJson(Map<String, dynamic> jsonSerialization) {
    return Livre(
      id: jsonSerialization['id'] as int?,
      titre: jsonSerialization['titre'] as String,
      description: jsonSerialization['description'] as String?,
      dateSoumission: jsonSerialization['dateSoumission'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateSoumission'],
            ),
      modeAudio: jsonSerialization['modeAudio'] == null
          ? null
          : _i2.ModeAudio.fromJson((jsonSerialization['modeAudio'] as String)),
      statutPrix: jsonSerialization['statutPrix'] == null
          ? null
          : _i3.StatutPrix.fromJson(
              (jsonSerialization['statutPrix'] as String),
            ),
      auteurId: jsonSerialization['auteurId'] as int,
      categorieId: jsonSerialization['categorieId'] as int,
      langueId: jsonSerialization['langueId'] as int,
      ambianceId: jsonSerialization['ambianceId'] as int?,
    );
  }

  static final t = LivreTable();

  static const db = LivreRepository._();

  @override
  int? id;

  String titre;

  String? description;

  DateTime dateSoumission;

  _i2.ModeAudio modeAudio;

  _i3.StatutPrix statutPrix;

  int auteurId;

  int categorieId;

  int langueId;

  int? ambianceId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Livre]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Livre copyWith({
    int? id,
    String? titre,
    String? description,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    int? auteurId,
    int? categorieId,
    int? langueId,
    int? ambianceId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Livre',
      if (id != null) 'id': id,
      'titre': titre,
      if (description != null) 'description': description,
      'dateSoumission': dateSoumission.toJson(),
      'modeAudio': modeAudio.toJson(),
      'statutPrix': statutPrix.toJson(),
      'auteurId': auteurId,
      'categorieId': categorieId,
      'langueId': langueId,
      if (ambianceId != null) 'ambianceId': ambianceId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Livre',
      if (id != null) 'id': id,
      'titre': titre,
      if (description != null) 'description': description,
      'dateSoumission': dateSoumission.toJson(),
      'modeAudio': modeAudio.toJson(),
      'statutPrix': statutPrix.toJson(),
      'auteurId': auteurId,
      'categorieId': categorieId,
      'langueId': langueId,
      if (ambianceId != null) 'ambianceId': ambianceId,
    };
  }

  static LivreInclude include() {
    return LivreInclude._();
  }

  static LivreIncludeList includeList({
    _i1.WhereExpressionBuilder<LivreTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LivreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LivreTable>? orderByList,
    LivreInclude? include,
  }) {
    return LivreIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Livre.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Livre.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LivreImpl extends Livre {
  _LivreImpl({
    int? id,
    required String titre,
    String? description,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    required int auteurId,
    required int categorieId,
    required int langueId,
    int? ambianceId,
  }) : super._(
         id: id,
         titre: titre,
         description: description,
         dateSoumission: dateSoumission,
         modeAudio: modeAudio,
         statutPrix: statutPrix,
         auteurId: auteurId,
         categorieId: categorieId,
         langueId: langueId,
         ambianceId: ambianceId,
       );

  /// Returns a shallow copy of this [Livre]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Livre copyWith({
    Object? id = _Undefined,
    String? titre,
    Object? description = _Undefined,
    DateTime? dateSoumission,
    _i2.ModeAudio? modeAudio,
    _i3.StatutPrix? statutPrix,
    int? auteurId,
    int? categorieId,
    int? langueId,
    Object? ambianceId = _Undefined,
  }) {
    return Livre(
      id: id is int? ? id : this.id,
      titre: titre ?? this.titre,
      description: description is String? ? description : this.description,
      dateSoumission: dateSoumission ?? this.dateSoumission,
      modeAudio: modeAudio ?? this.modeAudio,
      statutPrix: statutPrix ?? this.statutPrix,
      auteurId: auteurId ?? this.auteurId,
      categorieId: categorieId ?? this.categorieId,
      langueId: langueId ?? this.langueId,
      ambianceId: ambianceId is int? ? ambianceId : this.ambianceId,
    );
  }
}

class LivreUpdateTable extends _i1.UpdateTable<LivreTable> {
  LivreUpdateTable(super.table);

  _i1.ColumnValue<String, String> titre(String value) => _i1.ColumnValue(
    table.titre,
    value,
  );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dateSoumission(DateTime value) =>
      _i1.ColumnValue(
        table.dateSoumission,
        value,
      );

  _i1.ColumnValue<_i2.ModeAudio, _i2.ModeAudio> modeAudio(
    _i2.ModeAudio value,
  ) => _i1.ColumnValue(
    table.modeAudio,
    value,
  );

  _i1.ColumnValue<_i3.StatutPrix, _i3.StatutPrix> statutPrix(
    _i3.StatutPrix value,
  ) => _i1.ColumnValue(
    table.statutPrix,
    value,
  );

  _i1.ColumnValue<int, int> auteurId(int value) => _i1.ColumnValue(
    table.auteurId,
    value,
  );

  _i1.ColumnValue<int, int> categorieId(int value) => _i1.ColumnValue(
    table.categorieId,
    value,
  );

  _i1.ColumnValue<int, int> langueId(int value) => _i1.ColumnValue(
    table.langueId,
    value,
  );

  _i1.ColumnValue<int, int> ambianceId(int? value) => _i1.ColumnValue(
    table.ambianceId,
    value,
  );
}

class LivreTable extends _i1.Table<int?> {
  LivreTable({super.tableRelation}) : super(tableName: 'livre') {
    updateTable = LivreUpdateTable(this);
    titre = _i1.ColumnString(
      'titre',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    dateSoumission = _i1.ColumnDateTime(
      'dateSoumission',
      this,
      hasDefault: true,
    );
    modeAudio = _i1.ColumnEnum(
      'modeAudio',
      this,
      _i1.EnumSerialization.byName,
      hasDefault: true,
    );
    statutPrix = _i1.ColumnEnum(
      'statutPrix',
      this,
      _i1.EnumSerialization.byName,
      hasDefault: true,
    );
    auteurId = _i1.ColumnInt(
      'auteurId',
      this,
    );
    categorieId = _i1.ColumnInt(
      'categorieId',
      this,
    );
    langueId = _i1.ColumnInt(
      'langueId',
      this,
    );
    ambianceId = _i1.ColumnInt(
      'ambianceId',
      this,
    );
  }

  late final LivreUpdateTable updateTable;

  late final _i1.ColumnString titre;

  late final _i1.ColumnString description;

  late final _i1.ColumnDateTime dateSoumission;

  late final _i1.ColumnEnum<_i2.ModeAudio> modeAudio;

  late final _i1.ColumnEnum<_i3.StatutPrix> statutPrix;

  late final _i1.ColumnInt auteurId;

  late final _i1.ColumnInt categorieId;

  late final _i1.ColumnInt langueId;

  late final _i1.ColumnInt ambianceId;

  @override
  List<_i1.Column> get columns => [
    id,
    titre,
    description,
    dateSoumission,
    modeAudio,
    statutPrix,
    auteurId,
    categorieId,
    langueId,
    ambianceId,
  ];
}

class LivreInclude extends _i1.IncludeObject {
  LivreInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Livre.t;
}

class LivreIncludeList extends _i1.IncludeList {
  LivreIncludeList._({
    _i1.WhereExpressionBuilder<LivreTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Livre.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Livre.t;
}

class LivreRepository {
  const LivreRepository._();

  /// Returns a list of [Livre]s matching the given query parameters.
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
  Future<List<Livre>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<LivreTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LivreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LivreTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Livre>(
      where: where?.call(Livre.t),
      orderBy: orderBy?.call(Livre.t),
      orderByList: orderByList?.call(Livre.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Livre] matching the given query parameters.
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
  Future<Livre?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<LivreTable>? where,
    int? offset,
    _i1.OrderByBuilder<LivreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LivreTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Livre>(
      where: where?.call(Livre.t),
      orderBy: orderBy?.call(Livre.t),
      orderByList: orderByList?.call(Livre.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Livre] by its [id] or null if no such row exists.
  Future<Livre?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Livre>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Livre]s in the list and returns the inserted rows.
  ///
  /// The returned [Livre]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Livre>> insert(
    _i1.DatabaseSession session,
    List<Livre> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Livre>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Livre] and returns the inserted row.
  ///
  /// The returned [Livre] will have its `id` field set.
  Future<Livre> insertRow(
    _i1.DatabaseSession session,
    Livre row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Livre>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Livre]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Livre>> update(
    _i1.DatabaseSession session,
    List<Livre> rows, {
    _i1.ColumnSelections<LivreTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Livre>(
      rows,
      columns: columns?.call(Livre.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Livre]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Livre> updateRow(
    _i1.DatabaseSession session,
    Livre row, {
    _i1.ColumnSelections<LivreTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Livre>(
      row,
      columns: columns?.call(Livre.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Livre] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Livre?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<LivreUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Livre>(
      id,
      columnValues: columnValues(Livre.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Livre]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Livre>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<LivreUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<LivreTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LivreTable>? orderBy,
    _i1.OrderByListBuilder<LivreTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Livre>(
      columnValues: columnValues(Livre.t.updateTable),
      where: where(Livre.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Livre.t),
      orderByList: orderByList?.call(Livre.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Livre]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Livre>> delete(
    _i1.DatabaseSession session,
    List<Livre> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Livre>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Livre].
  Future<Livre> deleteRow(
    _i1.DatabaseSession session,
    Livre row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Livre>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Livre>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<LivreTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Livre>(
      where: where(Livre.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<LivreTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Livre>(
      where: where?.call(Livre.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Livre] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<LivreTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Livre>(
      where: where(Livre.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

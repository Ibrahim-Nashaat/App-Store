// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  AppNameDao _appDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `AppName` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  AppNameDao get appDao {
    return _appDaoInstance ??= _$AppNameDao(database, changeListener);
  }
}

class _$AppNameDao extends AppNameDao {
  _$AppNameDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _appNameInsertionAdapter = InsertionAdapter(
            database,
            'AppName',
            (AppName item) =>
                <String, dynamic>{'id': item.id, 'name': item.name},
            changeListener),
        _appNameUpdateAdapter = UpdateAdapter(
            database,
            'AppName',
            ['id'],
            (AppName item) =>
                <String, dynamic>{'id': item.id, 'name': item.name},
            changeListener),
        _appNameDeletionAdapter = DeletionAdapter(
            database,
            'AppName',
            ['id'],
            (AppName item) =>
                <String, dynamic>{'id': item.id, 'name': item.name},
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<AppName> _appNameInsertionAdapter;

  final UpdateAdapter<AppName> _appNameUpdateAdapter;

  final DeletionAdapter<AppName> _appNameDeletionAdapter;

  @override
  Future<List<AppName>> findAllAppName() async {
    return _queryAdapter.queryList('SELECT * FROM AppName',
        mapper: (Map<String, dynamic> row) =>
            AppName(row['id'] as int, row['name'] as String));
  }

  @override
  Stream<AppName> findAppNameById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM AppName WHERE id = ?',
        arguments: <dynamic>[id],
        queryableName: 'AppName',
        isView: false,
        mapper: (Map<String, dynamic> row) =>
            AppName(row['id'] as int, row['name'] as String));
  }

  @override
  Future<void> insertAppName(AppName name) async {
    await _appNameInsertionAdapter.insert(name, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateAppName(AppName name) async {
    await _appNameUpdateAdapter.update(name, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteAppName(AppName name) async {
    await _appNameDeletionAdapter.delete(name);
  }
}

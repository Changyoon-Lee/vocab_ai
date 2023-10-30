import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlDataBase {
  static final SqlDataBase instance = SqlDataBase._instance();

  Database? _database;

  SqlDataBase._instance() {
    _initDatabase();
  }
  factory SqlDataBase() {
    return instance;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    await _initDatabase();
    return _database!;
  }

  Future<void> _initDatabase() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'sample.db');
    _database = await openDatabase(path, version: 1, onCreate: _databaseCreate);
  }

  void _databaseCreate(Database db, int version) async {
    await db.execute('''
CREATE table vocab (
  id INTEGER primary key autoincrement,
  vocab TEXT not null,
  mean TEXT not null,
  createdAt TEXT not null,
  example TEXT,
  state INTEGER default 0
) 
''');
  }

  void _closeDataBase() async {
    if (_database != null) {
      await _database!.close();
    }
  }
}

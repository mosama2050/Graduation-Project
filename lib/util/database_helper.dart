import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:v1/model/employee.dart';

class DatabaseHelper {

  final String tableEmployee = 'employeeTable';
  final String columnId = 'id';
  final String columnyear = 'year';
  final String columnName = 'name';
  final String columnDepartment = 'department';
  final String columnterm = 'term';
  final String columnDescription = 'description';

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();

    return _db;
  }

  initDb() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'file.db');


    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $tableEmployee($columnId INTEGER PRIMARY KEY, '
                                    '$columnyear TEXT, $columnName TEXT'
                                    ', $columnterm TEXT, $columnDepartment TEXT'
                                    ', $columnDescription TEXT)');
  }

  Future<int> saveEmployee(Employee employee) async {
    var dbClient = await db;
    var result = await dbClient.insert(tableEmployee, employee.toMap());

    return result;
  }

  Future<List> getAllEmployees() async {
    var dbClient = await db;
    var result = await dbClient.query(
        tableEmployee,
        columns: [columnId, columnyear, columnName, columnterm, columnDepartment, columnDescription]);

    return result.toList();
  }

  Future<int> getCount() async {
    var dbClient = await db;
    return Sqflite.firstIntValue(await dbClient.rawQuery('SELECT COUNT(*) FROM $tableEmployee'));
  }

  Future<Employee> getEmployee(int id) async {
    var dbClient = await db;
    List<Map> result = await dbClient.query(tableEmployee,
        columns: [columnId, columnyear, columnName, columnterm, columnDepartment, columnDescription],
        where: '$columnId = ?',
        whereArgs: [id]);

    if (result.length > 0) {
      return new Employee.fromMap(result.first);
    }

    return null;
  }

  Future<int> deleteEmployee(int id) async {
    var dbClient = await db;
    return await dbClient.delete(tableEmployee, where: '$columnId = ?', whereArgs: [id]);

  }

  Future<int> updateEmployee(Employee employee) async {
    var dbClient = await db;
    return await dbClient.update(
        tableEmployee, employee.toMap(), where: "$columnId = ?", whereArgs: [employee.id]
    );
  }

  Future close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}

import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:todoapp/screens/home/model/task_model.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'dart:async';

class DBHeler {
  static Future<void> createTables(sql.Database database) async {
    await database.execute('CREATE TABLES todos ('
        'id INTEGER  PRIMARY KEY AUTOINCREMENT,'
        'title STRING, description TEXT, date STRING,'
        'createdAt STRING, updatedAt String,'
        'remind INTEGER, repeat STRING,'
        'isCompleted INTEGER,'
        ')');
    await database.execute('CREATE TABLES user ('
        'id INTEGER  PRIMARY KEY AUTOINCREMENT DEFAULT 0,'
        'isVerified INTEGER,'
        ')');
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase('drus', version: 1, onCreate: (
      sql.Database database,
      int version,
    ) async {
      await createTables(database);
    });
  }

  static Future<int> createItem(Tasks task) async {
    final db = await DBHeler.db();
    final id = await db.insert('todos', task.toJson(),
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<int> createUser(int isVerified) async {
    final db = await DBHeler.db();

    final data = {
      'id': 1,
      'isVerified': isVerified,
    };

    final id = await db.insert('user', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  ///grt all item
  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await DBHeler.db();
    return db.query('todos', orderBy: 'id');
  }

  ///to get single item
  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await DBHeler.db();
    return db.query('todos', where: 'id =?', whereArgs: [id], limit: 1);
  }

  static Future<List<Map<String, dynamic>>> getUser() async {
    final db = await DBHeler.db();
    return db.query('user', orderBy: 'id');
  }

  static Future<int> updateItem(
    int id,
    String title,
    String description,
    int isCompleted,
    String date,
    String createdAt,
    String updatedAt,
  ) async {
    final db = await DBHeler.db();
    final data = {
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'date': date,
      'createdAt': createdAt,
      '  updatedAt': updatedAt
    };
    final result =
        await db.update('todos', data, where: 'id =?', whereArgs: [id]);
    return result;
  }

  static Future<void> delete(int id) async {
    final db = await DBHeler.db();
    try {
      db.delete('todos', where: 'id =?', whereArgs: [id]);
    } catch (e) {
      debugPrint('$e');
    }
  }
}

import 'dart:async';
import 'package:pantry_meals/persistence/daos/food_dao.dart';
import 'package:pantry_meals/persistence/entities/food.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:floor/floor.dart';

part 'database.g.dart';

const String databaseLocation = "app_database.db";

@Database(version: 1, entities: [Food])
abstract class AppDatabase extends FloorDatabase {
  FoodDao get foodDao;

  static AppDatabase _dbSingleton;

  static Future<AppDatabase> getDatabase() async {
    if (_dbSingleton == null) {
      _dbSingleton =
          await $FloorAppDatabase.databaseBuilder(databaseLocation).build();
    }
    return _dbSingleton;
  }
}

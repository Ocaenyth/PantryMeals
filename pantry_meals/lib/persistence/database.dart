import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:floor/floor.dart';

import 'package:pantry_meals/persistence/entities/food.dart';
import 'package:pantry_meals/persistence/entities/pantry_item.dart';

import 'package:pantry_meals/persistence/daos/food_dao.dart';
import 'package:pantry_meals/persistence/daos/pantry_item_dao.dart';

part 'database.g.dart';

const String databaseLocation = "app_database.db";

@Database(
  version: 1,
  entities: [
    Food,
    PantryItem,
  ],
)
abstract class AppDatabase extends FloorDatabase {
  FoodDao get foodDao;

  PantryItemDao get pantryItemDao;

  static AppDatabase _dbSingleton;

  static Future<AppDatabase> getDatabase() async {
    if (_dbSingleton == null) {
      _dbSingleton =
          await $FloorAppDatabase.databaseBuilder(databaseLocation).build();
    }
    return _dbSingleton;
  }
}

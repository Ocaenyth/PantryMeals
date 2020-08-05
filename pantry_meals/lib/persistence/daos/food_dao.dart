import 'package:floor/floor.dart';
import 'package:pantry_meals/persistence/entities/food.dart';

@dao
abstract class FoodDao {
  @Query('SELECT * FROM ${Food.tableName}')
  Future<List<Food>> findAllFood();

  @Query('SELECT * FROM ${Food.tableName} WHERE id = :id')
  Future<Food> findFoodById(int id);

  @Query('SELECT * FROM ${Food.tableName} WHERE barcode = :barcode')
  Future<Food> findFoodByBarcode(String barcode);

  @insert
  Future<void> insertFood(Food food);
}

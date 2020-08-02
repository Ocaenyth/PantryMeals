import 'package:floor/floor.dart';
import 'package:pantry_meals/persistence/entities/food.dart';

@dao
abstract class FoodDao {
  @Query('SELECT * FROM Food')
  Future<List<Food>> findAllFood();

  @Query('SELECT * FROM Food WHERE id = :id')
  Stream<Food> findFoodById(int id);

  @insert
  Future<void> insertFood(Food food);
}

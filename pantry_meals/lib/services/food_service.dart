import 'package:pantry_meals/persistence/database.dart';
import 'package:pantry_meals/persistence/entities/food.dart';
import 'package:pantry_meals/services/open_food_facts_service.dart';

class FoodService {
  static Future<Food> insertFood(Food newFood) async {
    AppDatabase db = await AppDatabase.getDatabase();
    Food oldFood = await db.foodDao.findFoodByBarcode(newFood.barcode);

    if (oldFood != null) {
      return oldFood;
    }

    newFood.id = await db.foodDao.insertFood(newFood);
    return newFood;
  }

  static Future<Food> insertFoodFromBarcode(String barcode) async {
    Food food = await OpenFoodFactsService.getFoodFromBarcode(barcode);

    food = await insertFood(food);
    return food;
  }

  static Future<Food> findFoodById(int id) async {
    AppDatabase db = await AppDatabase.getDatabase();
    return db.foodDao.findFoodById(id);
  }

  static Future<List<Food>> findAllFood() async {
    AppDatabase db = await AppDatabase.getDatabase();
    return db.foodDao.findAllFood();
  }
}

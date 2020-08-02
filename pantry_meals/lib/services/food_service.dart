import 'package:pantry_meals/entities/database.dart';
import 'package:pantry_meals/entities/food.dart';
import 'package:pantry_meals/services/open_food_facts_service.dart';

class FoodService {
  static Future<Food> insertFood(Food food) async {
    AppDatabase db = await AppDatabase.getDatabase();
    await db.foodDao.insertFood(food);
    return food;
  }

  static Future<Food> insertFoodFromBarcode(String barcode) async {
    Food food = await OpenFoodFactsService.getFoodFromBarcode(barcode);

    food = await insertFood(food);
    return food;
  }
}

import 'package:pantry_meals/persistence/database.dart';
import 'package:pantry_meals/persistence/entities/food.dart';
import 'package:pantry_meals/persistence/entities/pantry_item.dart';
import 'package:pantry_meals/services/food_service.dart';

class PantryService {
  static Future<PantryItem> insertPantryItem(PantryItem pantryItem) async {
    AppDatabase db = await AppDatabase.getDatabase();
    pantryItem.id = await db.pantryItemDao.insertPantryItem(pantryItem);
    return pantryItem;
  }

  static Future<PantryItem> insertPantryItemFromBarcode(String barcode) async {
    Food food = await FoodService.insertFoodFromBarcode(barcode);
    PantryItem pantryItem = PantryItem(
      foodId: food.id,
      leftQuantity: food.quantity,
    );

    await insertPantryItem(pantryItem);
    return pantryItem;
  }

  static Future<List<PantryItem>> findAllPantryItems() async {
    AppDatabase db = await AppDatabase.getDatabase();
    return db.pantryItemDao.findAllPantryItems();
  }
}

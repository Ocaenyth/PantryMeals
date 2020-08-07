import 'package:pantry_meals/persistence/entities/food.dart';
import 'package:pantry_meals/persistence/entities/pantry_item.dart';

class ParsedPantryItem {
  final List<PantryItem> items = new List<PantryItem>();
  Food food;

  ParsedPantryItem({this.food});

  factory ParsedPantryItem.fromPantryItemList(List<PantryItem> items) {
    ParsedPantryItem parsed = ParsedPantryItem();

    if (items.length > 0) {
      parsed.food = items[0].food;
    }
    for (PantryItem item in items) {
      parsed.items.add(item);
    }
    return parsed;
  }
}

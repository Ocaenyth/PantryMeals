import 'package:pantry_meals/persistence/entities/pantry_item.dart';

class ParsedPantryItem {
  final List<PantryItem> items = new List<PantryItem>();

  ParsedPantryItem();

  factory ParsedPantryItem.fromPantryItemList(List<PantryItem> items) {
    ParsedPantryItem parsed = ParsedPantryItem();
    for (PantryItem item in items) {
      parsed.items.add(item);
    }
    return parsed;
  }
}

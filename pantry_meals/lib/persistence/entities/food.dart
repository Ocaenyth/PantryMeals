import 'package:floor/floor.dart';

@Entity(
  tableName: Food.tableName,
)
class Food {
  static const tableName = "food";

//  TODO: Add nutritional values
//  TODO: Add expiration date
//  TODO: Expiration date prediction ?
//  TODO: Add image / only image url ? / give the option to user ?
//  TODO: Ingredients
//  TODO: Serving quantity
  @PrimaryKey(autoGenerate: true)
  int id;

  String barcode;
  String name;
  int quantity;

  Food({this.id, this.barcode, this.name, this.quantity});

  factory Food.fromJson(Map<String, dynamic> json) {
    var quantity = json['product']['product_quantity'] ?? 0;

    return Food(
      id: json['id'],
      barcode: json['code'],
      name: json['product']['product_name'],
      quantity: int.parse(quantity.toString()),
    );
  }

  static Map<int, Food> listToIdMap(List<Food> foods) {
    Map<int, Food> res = new Map<int, Food>();

    for (Food food in foods) {
      res[food.id] = food;
    }
    return res;
  }

  static Map<String, Food> listToBarcodeMap(List<Food> foods) {
    Map<String, Food> res = new Map<String, Food>();

    for (Food food in foods) {
      res[food.barcode] = food;
    }
    return res;
  }
}

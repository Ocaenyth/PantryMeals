import 'package:floor/floor.dart';
import 'package:pantry_meals/exceptions/product_not_found_exception.dart';

@Entity(
  tableName: Food.tableName,
)
class Food {
  static const tableName = "food";

//  TODO: Add nutritional values
//  TODO: Expiration date prediction ?
//  TODO: Add image / only image url ? / give the option to user ?
//  TODO: Ingredients
  @PrimaryKey(autoGenerate: true)
  int id;

  String barcode;
  String name;
  int quantity;
  double servingQuantity;
  String nutriscore;
  String expirationDate;
  String imageUrl;

  Food(
      {this.id,
      this.barcode,
      this.name,
      this.quantity,
      this.servingQuantity,
      this.nutriscore,
      this.expirationDate,
      this.imageUrl});

  factory Food.fromJson(Map<String, dynamic> json) {
    if (json['status'] == 0) {
      throw ProductNotFoundException(json['id']);
    }

    var quantity = json['product']['product_quantity'] ?? 0;
    var servingQuantity = json['product']['serving_quantity'] ?? 0;

    return Food(
      id: json['id'],
      barcode: json['code'],
      name: json['product']['product_name'],
      quantity: int.parse(quantity.toString()),
      servingQuantity: double.parse(servingQuantity.toString()),
      nutriscore: json['product']['nutriscore_grade'],
      expirationDate: json['product']['expiration_date'],
      imageUrl: json['product']['image_url'],
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

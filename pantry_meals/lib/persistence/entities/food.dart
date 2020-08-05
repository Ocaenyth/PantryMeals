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
  final int id;

  final String barcode;
  final String name;
  final int quantity;

  Food({this.id, this.barcode, this.name, this.quantity});

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      id: json['id'],
      barcode: json['code'],
      name: json['product']['product_name'],
      quantity: json['product']['product_quantity'],
    );
  }
}

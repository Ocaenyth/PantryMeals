import 'package:floor/floor.dart';
import 'package:pantry_meals/persistence/entities/food.dart';

@Entity(
  tableName: PantryItem.tableName,
  foreignKeys: [
    ForeignKey(
      childColumns: ['food_id'],
      parentColumns: ['id'],
      entity: Food,
    )
  ],
)
class PantryItem {
  static const tableName = "pantry_item";

//TODO: Add expiration date
  @PrimaryKey(autoGenerate: true)
  int id;

  @ColumnInfo(name: 'food_id')
  int foodId;

  @ignore
  Food food;

  double leftQuantity;

  PantryItem({this.id, this.foodId, this.food, this.leftQuantity});
}

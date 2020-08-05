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

  @PrimaryKey(autoGenerate: true)
  final int id;

  @ColumnInfo(name: 'food_id')
  final int foodId;

  final int leftQuantity;

  PantryItem({this.id, this.foodId, this.leftQuantity});
}

import 'package:floor/floor.dart';
import 'package:pantry_meals/persistence/entities/pantry_item.dart';

@dao
abstract class PantryItemDao {
  @Query('SELECT * FROM ${PantryItem.tableName}')
  Future<List<PantryItem>> findAllPantryItems();

  @Query('SELECT * FROM ${PantryItem.tableName} WHERE barcode = :barcode')
  Future<List<PantryItem>> findAllPantryItemsByBarcode(String barcode);

  @Query('SELECT * FROM ${PantryItem.tableName} WHERE id = :id')
  Future<PantryItem> findPantryItemById(int id);

  @Query('SELECT * FROM ${PantryItem.tableName} WHERE barcode = :barcode')
  Future<PantryItem> findPantryItemByBarcode(String barcode);

  @insert
  Future<int> insertPantryItem(PantryItem pantryItem);
}

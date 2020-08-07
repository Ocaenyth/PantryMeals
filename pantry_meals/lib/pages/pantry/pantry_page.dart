import 'package:flutter/material.dart';
import 'package:pantry_meals/localization/app_localizations.dart';
import 'package:pantry_meals/navigation/navigation_drawer.dart';
import 'package:pantry_meals/pages/pantry/floating/add_food_dialog.dart';
import 'package:pantry_meals/pages/pantry/items/informations/inherited_pantry_card.dart';
import 'package:pantry_meals/pages/pantry/items/pantry_item_card.dart';
import 'package:pantry_meals/persistence/entities/food.dart';
import 'package:pantry_meals/persistence/entities/pantry_item.dart';
import 'package:pantry_meals/persistence/entities/parsed_pantry_item.dart';
import 'package:pantry_meals/services/food_service.dart';
import 'package:pantry_meals/services/pantry_service.dart';

class PantryPage extends StatefulWidget {
  @override
  _PantryPageState createState() => _PantryPageState();
}

class _PantryPageState extends State<PantryPage> {
  List<PantryItem> pantryItems;
  List<ParsedPantryItem> pantry;

  @override
  void initState() {
    super.initState();
    this._updatePantry();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).pantryPageTitle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openAddFoodDialog(context),
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          for (ParsedPantryItem item in pantry ?? [])
            InheritedPantryCard(
              item: item,
              child: PantryItemCard(),
            ),
        ],
      ),
    );
  }

  void _openAddFoodDialog() {
    showDialog(context: context, builder: (_) => AddFoodDialog());
  }

  void _updatePantry() async {
    List<PantryItem> items = await _fetchPantryItems();
    List<ParsedPantryItem> parsedPantry = await _buildParsedPantry(items);

    setState(() {
      this.pantryItems = items;
      this.pantry = parsedPantry;
    });
  }

  Future<List<PantryItem>> _fetchPantryItems() async {
    return await PantryService.findAllPantryItems();
  }

  Future<List<ParsedPantryItem>> _buildParsedPantry(
      List<PantryItem> items) async {
    List<Food> foods = await FoodService.findAllFood();
    Map<int, Food> foodMap = Food.listToIdMap(foods);

    List<ParsedPantryItem> res = new List<ParsedPantryItem>();
    Map<String, List<PantryItem>> tmp = new Map<String, List<PantryItem>>();

    for (PantryItem item in items) {
      item.food = foodMap[item.foodId];
      if (!tmp.containsKey(item.food.barcode)) {
        tmp[item.food.barcode] = new List<PantryItem>();
      }
      tmp[item.food.barcode].add(item);
    }

    tmp.forEach((barcode, value) {
      res.add(ParsedPantryItem.fromPantryItemList(value));
    });
    return res;
  }
}

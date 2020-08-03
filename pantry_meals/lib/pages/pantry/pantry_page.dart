import 'package:flutter/material.dart';
import 'package:pantry_meals/localization/app_localizations.dart';
import 'package:pantry_meals/navigation/navigation_drawer.dart';
import 'package:pantry_meals/pages/pantry/floating/add_food_dialog.dart';
import 'package:pantry_meals/pages/pantry/items/pantry_item_card.dart';

class PantryPage extends StatefulWidget {
  @override
  PantryPageState createState() => PantryPageState();
}

class PantryPageState extends State<PantryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).pantryPageTitle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openAddFoodDialog,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      body: PantryItemCard(),
    );
  }

  void _openAddFoodDialog() {
    showDialog(context: context, builder: (_) => AddFoodDialog());
  }
}

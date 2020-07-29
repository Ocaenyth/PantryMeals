import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pantry_meals/localization/app_localizations.dart';
import 'package:pantry_meals/navigation/navigation_drawer.dart';
import 'package:pantry_meals/pages/pantry/add_food_dialog.dart';

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
//      body: AddFoodDialog(),
    );
  }

  void _openAddFoodDialog() {
    showDialog(context: context, builder: (_) => AddFoodDialog());
  }
}

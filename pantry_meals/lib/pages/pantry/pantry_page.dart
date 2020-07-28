import 'package:flutter/material.dart';
import 'package:pantry_meals/navigation/navigation_drawer.dart';
import 'package:pantry_meals/pages/pantry/add_food_dialog.dart';

class PantryPage extends StatefulWidget {
  @override
  PantryPageState createState() => PantryPageState();
}

class PantryPageState extends State<PantryPage> {
  final String _title = "My Pantry";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(_title),
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

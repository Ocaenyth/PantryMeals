import 'package:flutter/material.dart';
import 'file:///E:/Dev/Projects/PantryMeals/pantry_meals/lib/views/pantry.dart';

class PantryNavigationTile extends StatelessWidget {
  final _title = "My Pantry";

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_title),
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) => PantryView()),
        );
      },
    );
  }
}

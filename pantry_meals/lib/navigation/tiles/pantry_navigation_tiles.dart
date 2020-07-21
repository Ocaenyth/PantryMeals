import 'package:flutter/material.dart';
import 'package:pantry_meals/pantry.dart';

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

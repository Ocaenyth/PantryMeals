import 'package:flutter/material.dart';
import 'file:///E:/Dev/Projects/PantryMeals/pantry_meals/lib/views/home.dart';

class HomeNavigationTile extends StatelessWidget {
  final _title = "Home";

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_title),
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) => HomeView()),
        );
      },
    );
  }
}

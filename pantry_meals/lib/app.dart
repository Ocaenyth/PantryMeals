import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String _title = "Pantry Meals";
    return MaterialApp(
      title: _title,
      home: HomePage(),
    );
  }
}

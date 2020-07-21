import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/home.dart';

class HomeNavigationTile extends StatelessWidget {
  final String _title = "Home";

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_title),
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) => HomePage()),
        );
      },
    );
  }
}

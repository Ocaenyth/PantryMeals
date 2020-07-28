import 'package:flutter/material.dart';
import 'package:pantry_meals/navigation/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  final String _title = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: Text("Hello :]"),
      ),
    );
  }
}

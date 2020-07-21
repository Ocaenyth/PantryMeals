import 'package:flutter/material.dart';
import 'package:pantry_meals/navigation/navigation_drawer.dart';

void main() => runApp(HomeView());

class HomeView extends StatelessWidget {
  final _title = "Home View xd";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          title: Text(_title),
        ),
      ),
    );
  }
}

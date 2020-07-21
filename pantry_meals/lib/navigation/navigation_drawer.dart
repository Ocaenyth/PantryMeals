import 'package:flutter/material.dart';
import 'package:pantry_meals/navigation/tiles/home_navigation_tile.dart';
import 'package:pantry_meals/navigation/tiles/pantry_navigation_tiles.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
//            TODO Change this header to something that is useful
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          HomeNavigationTile(),
          PantryNavigationTile(),
        ],
      ),
    );
  }
}

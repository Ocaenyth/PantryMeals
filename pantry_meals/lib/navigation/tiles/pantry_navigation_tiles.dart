import 'package:flutter/material.dart';
import 'package:pantry_meals/localization/app_localizations.dart';
import 'package:pantry_meals/pages/pantry/pantry_page.dart';

class PantryNavigationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(AppLocalizations.of(context).pantryNavigationTileName),
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) => PantryPage()),
        );
      },
    );
  }
}

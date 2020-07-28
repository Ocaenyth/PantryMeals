import 'package:flutter/material.dart';
import 'package:pantry_meals/localization/localizations_delegates.dart';
import 'package:pantry_meals/localization/supported_locales.dart';
import 'package:pantry_meals/pages/pantry/pantry_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String _title = "Pantry Meals";
    return MaterialApp(
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      title: _title,
      home: PantryPage(),
    );
  }
}

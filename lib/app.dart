import 'package:flutter/material.dart';
import 'package:pantry_meals/localization/localizations_delegates.dart';
import 'package:pantry_meals/localization/supported_locales.dart';
import 'package:pantry_meals/pages/pantry/pantry_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _AppState state = context.findAncestorStateOfType<_AppState>();

    state.setLocale(newLocale);
  }
}

class _AppState extends State<App> {
  Locale locale;

  @override
  Widget build(BuildContext context) {
    final String _title = "Pantry Meals";
    return MaterialApp(
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      locale: locale,
      title: _title,
      home: PantryPage(),
    );
  }

  @override
  void initState() {
    super.initState();
    this._fetchLocale().then((locale) {
      setState(() {
        this.locale = locale;
      });
    });
  }

  _fetchLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString('language_code') ?? 'en';

    return Locale(languageCode, '');
  }

  setLocale(Locale newLocale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', newLocale.languageCode);

    setState(() {
      this.locale = newLocale;
    });
  }
}

import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'pantryPageTitle': "My Pantry",
      'homeNavigationTileName': "Home",
      'pantryNavigationTileName': "My Pantry",
    },
    'fr': {
      'pantryPageTitle': "Mon Garde-manger",
      'homeNavigationTileName': "Accueil",
      'pantryNavigationTileName': "Mon Garde-manger",
    },
  };

  String _get(String key) {
    if (_localizedValues[locale.languageCode].containsKey(key)) {
      return _localizedValues[locale.languageCode][key];
    }
    return "Unimplemented: ${locale.languageCode}.$key";
  }

  String get pantryPageTitle {
    return _get('pantryPageTitle');
  }

  String get homeNavigationTileName {
    return _get('homeNavigationTileName');
  }

  String get pantryNavigationTileName {
    return _get('pantryNavigationTileName');
  }
}

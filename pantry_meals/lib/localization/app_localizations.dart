import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'homePageTitle': "Home",
      'pantryPageTitle': "My Pantry",
      'homeNavigationTileName': "Home",
      'pantryNavigationTileName': "My Pantry",
      'cameraPermissionRequired':
          "Camera permissions are required for this feature",
      'unknownError': "Unknown error",
    },
    'fr': {
      'homePageTitle': "Accueil",
      'pantryPageTitle': "Mon Garde-manger",
      'homeNavigationTileName': "Accueil",
      'pantryNavigationTileName': "Mon Garde-manger",
      'cameraPermissionRequired':
          "L'accès à la caméra est nécessaire pour cette fonctionnalité",
      'unknownError': "Erreur inconnue",
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

  String get homePageTitle {
    return _get('homePageTitle');
  }

  String get homeNavigationTileName {
    return _get('homeNavigationTileName');
  }

  String get pantryNavigationTileName {
    return _get('pantryNavigationTileName');
  }

  String get cameraPermissionRequired {
    return _get('cameraPermissionRequired');
  }

  String get unknownError {
    return _get('unknownError');
  }
}

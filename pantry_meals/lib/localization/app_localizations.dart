import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      // --- PAGES ---
      'homePageTitle': "Home",
      'pantryPageTitle': "My Pantry",
      // --- NAVIGATION ---
      'homeNavigationTileName': "Home",
      'pantryNavigationTileName': "My Pantry",
      // --- ERRORS ---
      'cameraPermissionRequired':
          "Camera permissions are required for this feature",
      'productNotFoundError': "Could not find this product",
      'unknownError': "Unknown error",
    },
    'fr': {
      // --- PAGES ---
      'homePageTitle': "Accueil",
      'pantryPageTitle': "Mon Garde-manger",
      // --- NAVIGATION ---
      'homeNavigationTileName': "Accueil",
      'pantryNavigationTileName': "Mon Garde-manger",
      // --- ERRORS ---
      'cameraPermissionRequired':
          "L'accès à la caméra est nécessaire pour cette fonctionnalité",
      'productNotFoundError': "Impossible de trouver ce produit",
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

  String get productNotFoundError {
    return _get('productNotFoundError');
  }

  String get unknownError {
    return _get('unknownError');
  }
}

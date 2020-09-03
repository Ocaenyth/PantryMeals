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
      // --- BUTTONS ---
      'saveButton': "Save",
      // --- FOOD ---
      'remainingStock': "Remaining",
      'perServing': "Per serving",
      'max': "Max",
      'inStock': "In Stock",
      'expiryDate': "Date",
      'remainingTime': "Remaining",
      'expiryPrediction': "Prediction",
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
      // --- BUTTONS ---
      'saveButton': "Sauvegarder",
      // --- FOOD ---
      'remainingStock': "Restant",
      'perServing': "Par part",
      'max': "Max",
      'inStock': "En Stock",
      'expiryDate': "Date",
      'remainingTime': "Restant",
      'expiryPrediction': "Prédiction",
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

  // --- PAGES ---

  String get pantryPageTitle {
    return _get('pantryPageTitle');
  }

  String get homePageTitle {
    return _get('homePageTitle');
  }

  // --- NAVIGATION ---

  String get homeNavigationTileName {
    return _get('homeNavigationTileName');
  }

  String get pantryNavigationTileName {
    return _get('pantryNavigationTileName');
  }

  // --- BUTTONS ---

  String get saveButton {
    return _get('saveButton');
  }

  // --- FOOD ---

  String get remainingStock {
    return _get('remainingStock');
  }

  String get perServing {
    return _get('perServing');
  }

  String get max {
    return _get('max');
  }

  String get inStock {
    return _get('inStock');
  }

  String get expiryDate {
    return _get('expiryDate');
  }

  String get remainingTime {
    return _get('remainingTime');
  }

  String get expiryPrediction {
    return _get('expiryPrediction');
  }

  // --- ERRORS ---

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

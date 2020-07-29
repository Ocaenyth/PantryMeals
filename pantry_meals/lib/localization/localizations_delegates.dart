import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pantry_meals/localization/app_localizations_delegate.dart';

final localizationsDelegates = [
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
  const AppLocalizationsDelegate(),
];

import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/items/dialog/pantry_item_dialog.dart';
import 'package:pantry_meals/pages/pantry/pantry_page.dart';
import 'package:pantry_meals/persistence/entities/parsed_pantry_item.dart';

class InheritedPantryItemDialog extends InheritedWidget {
  final PantryPageState pantryPageState;
  final ParsedPantryItem pantryItem;

  InheritedPantryItemDialog({this.pantryPageState, this.pantryItem})
      : super(child: PantryItemDialog());

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static InheritedPantryItemDialog of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedPantryItemDialog>();
  }
}

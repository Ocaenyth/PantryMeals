import 'package:flutter/material.dart';
import 'package:pantry_meals/persistence/entities/parsed_pantry_item.dart';

class InheritedPantryCard extends InheritedWidget {
  final ParsedPantryItem item;

  InheritedPantryCard({this.item, Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static InheritedPantryCard of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedPantryCard>();
  }
}

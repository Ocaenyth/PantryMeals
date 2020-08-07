import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/items/informations/inherited_pantry_card.dart';

class PantryItemName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String name = InheritedPantryCard.of(context).item.food.name;
    return Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}

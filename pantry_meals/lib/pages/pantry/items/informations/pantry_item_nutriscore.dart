import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/items/informations/inherited_pantry_card.dart';

class PantryItemNutriscore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String nutriscore =
        InheritedPantryCard.of(context).item.food.nutriscore;
    return Container(
      alignment: Alignment.bottomLeft,
      child: Image.asset(
        'res/nutriscore/$nutriscore.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

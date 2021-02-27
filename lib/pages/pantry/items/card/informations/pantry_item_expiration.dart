import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/items/card/informations/inherited_pantry_card.dart';

class PantryItemExpiration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String expirationDate =
        InheritedPantryCard.of(context).item.food.expirationDate;
    return Text(
      "Expire le Mar 03 Aout",
//      "Expire le $expirationDate",
      style: TextStyle(
        color: Colors.grey,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/items/informations/inherited_pantry_card.dart';

class PantryItemQuantity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final leftQuantity =
        InheritedPantryCard.of(context).item.items[0].leftQuantity;
    final totalQuantity = InheritedPantryCard.of(context).item.food.quantity;
    final totalItems = InheritedPantryCard.of(context).item.items.length;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text("$leftQuantity / $totalQuantity g"),
        Text('Left: $totalItems'),
      ],
    );
  }
}

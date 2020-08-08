import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/items/card/informations/pantry_item_expiration.dart';
import 'package:pantry_meals/pages/pantry/items/card/informations/pantry_item_name.dart';
import 'package:pantry_meals/pages/pantry/items/card/informations/pantry_item_nutriscore.dart';
import 'package:pantry_meals/pages/pantry/items/card/informations/pantry_item_quantity.dart';

class PantryItemInformations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//  TODO: Use actual food information
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          PantryItemName(),
          PantryItemExpiration(),
          Expanded(
            child: Container(
              constraints: BoxConstraints.expand(),
              alignment: Alignment.bottomLeft,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: PantryItemNutriscore(),
                  ),
                  Expanded(
                    flex: 2,
                    child: PantryItemQuantity(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

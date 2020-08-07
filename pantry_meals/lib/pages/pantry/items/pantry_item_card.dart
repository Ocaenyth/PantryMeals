import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/items/informations/inherited_pantry_card.dart';
import 'package:pantry_meals/pages/pantry/items/pantry_item_informations.dart';

class PantryItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: InkWell(
//        TODO: Add ontap > open item infos
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Image(
                  image: NetworkImage(
                    InheritedPantryCard.of(context).item.food.imageUrl,
                  ),
                  fit: BoxFit.fill,
                ),
                alignment: Alignment.centerLeft,
                height: 150,
                width: 100,
              ),
              Expanded(
                child: PantryItemInformations(),
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/items/card/informations/inherited_pantry_card.dart';
import 'package:pantry_meals/pages/pantry/items/card/pantry_item_informations.dart';
import 'package:pantry_meals/pages/pantry/items/dialog/inherited_pantry_item_dialog.dart';
import 'package:pantry_meals/pages/pantry/pantry_page.dart';

class PantryItemCard extends StatelessWidget {
  final PantryPageState pantryPageState;

  PantryItemCard({this.pantryPageState});

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
          onTap: () => _openItemDialog(context),
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

  void _openItemDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => InheritedPantryItemDialog(
        pantryPageState: this.pantryPageState,
        pantryItem: InheritedPantryCard.of(context).item,
      ),
    );
  }
}

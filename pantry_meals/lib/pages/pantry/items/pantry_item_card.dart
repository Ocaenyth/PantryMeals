import 'package:flutter/material.dart';
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
              Expanded(
                child: Image(
//                TODO: Add correct image
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                ),
                flex: 1,
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

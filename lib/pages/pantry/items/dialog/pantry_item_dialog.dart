import 'package:flutter/material.dart';
import 'package:pantry_meals/localization/app_localizations.dart';
import 'package:pantry_meals/pages/pantry/items/dialog/inherited_pantry_item_dialog.dart';
import 'package:pantry_meals/pages/pantry/items/dialog/pantry_item_row.dart';
import 'package:pantry_meals/persistence/entities/parsed_pantry_item.dart';

class PantryItemDialog extends StatelessWidget {
  final PantryItemRow remainingQtyRow = PantryItemRow(rowName: "Remaining");
  final PantryItemRow servingRow = PantryItemRow(rowName: "Per serving");
  final PantryItemRow maxRow = PantryItemRow(rowName: "Max");
  final PantryItemRow stockRow =
      PantryItemRow(rowName: "In stock", enabled: false);

  final PantryItemRow dateRow = PantryItemRow(rowName: "Date");
  final PantryItemRow remainingTimeRow =
      PantryItemRow(rowName: "Remaining", enabled: false);
  final PantryItemRow predictionRow = PantryItemRow(rowName: "Prediction");

  @override
  Widget build(BuildContext context) {
    final ParsedPantryItem item =
        InheritedPantryItemDialog.of(context).pantryItem;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        height: 530,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Container(
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      item.food.imageUrl,
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                alignment: Alignment.topCenter,
                height: 150,
                width: 300,
              ),
              Text(
                "Brioche tressée",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Quantity",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    remainingQtyRow,
                    servingRow,
                    maxRow,
                    stockRow,
                    PantryItemRow(rowName: "Total"),
                    Text(
                      "Expiration",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    dateRow,
                    remainingTimeRow,
                    predictionRow,
                    RaisedButton(
                      color: Theme.of(context).accentColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () {},
                      child: Text(AppLocalizations.of(context).saveButton),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

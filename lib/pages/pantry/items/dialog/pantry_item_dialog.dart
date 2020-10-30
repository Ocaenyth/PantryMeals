import 'package:flutter/material.dart';
import 'package:pantry_meals/localization/app_localizations.dart';
import 'package:pantry_meals/pages/pantry/items/dialog/inherited_pantry_item_dialog.dart';
import 'package:pantry_meals/pages/pantry/items/dialog/pantry_item_name_field.dart';
import 'package:pantry_meals/pages/pantry/items/dialog/pantry_item_row.dart';
import 'package:pantry_meals/persistence/entities/parsed_pantry_item.dart';

class PantryItemDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PantryItemDialogState();
}

class PantryItemDialogState extends State<PantryItemDialog> {
  PantryItemNameField itemNameTextField;

  PantryItemRow remainingQtyRow;
  PantryItemRow servingRow;
  PantryItemRow maxRow;
  PantryItemRow stockRow;
  PantryItemRow totalRow;

  PantryItemRow dateRow;
  PantryItemRow remainingTimeRow;
  PantryItemRow predictionRow;

  @override
  Widget build(BuildContext context) {
    final ParsedPantryItem item =
        InheritedPantryItemDialog.of(context).pantryItem;

    this._setRows(item);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        height: 550,
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
              this.itemNameTextField,
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
                    totalRow,
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

  void _setRows(ParsedPantryItem item) {
    itemNameTextField = PantryItemNameField(
      initialName: item.food.name,
    );

    remainingQtyRow = PantryItemRow(
      rowName: "Remaining",
      initialValue: item.items[0].leftQuantity,
    );
    servingRow = PantryItemRow(
      rowName: "Per serving",
      initialValue: item.food.servingQuantity.round(),
    );
    maxRow = PantryItemRow(
      rowName: "Max",
      initialValue: item.food.quantity,
    );
    stockRow = PantryItemRow(
      rowName: "In stock",
      initialValue: item.getStockQuantity(),
      enabled: false,
    );
    totalRow = PantryItemRow(
      rowName: "Total",
      initialValue: item.getTotalRemainingQuantity(),
      enabled: false,
    );

//TODO: Add expiration date + Remaining time + Expiration prediction
    dateRow = PantryItemRow(
      rowName: "Date",
//      initialValue: item.items[0].expirationDate,
    );
    remainingTimeRow = PantryItemRow(
        rowName: "Remaining",
//        initialValue: item.items[0].getRemainingTime(),
        enabled: false);
    predictionRow = PantryItemRow(
      rowName: "Prediction",
//      initialValue: item.food.expirationPrediction,
    );
  }

  void _saveChanges() {
// TODO: Trigger card update on save
    final ParsedPantryItem item =
        InheritedPantryItemDialog.of(context).pantryItem;
    item.food.name = 'XD';
  }
}

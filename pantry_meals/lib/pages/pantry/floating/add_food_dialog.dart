import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/floating/add_food_barcode_button.dart';
import 'package:pantry_meals/pages/pantry/floating/add_food_manually_button.dart';
import 'package:pantry_meals/pages/pantry/pantry_page.dart';

class AddFoodDialog extends StatelessWidget {
  final PantryPageState pantryPageState;

  AddFoodDialog(this.pantryPageState);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      child: _dialogContent(context),
    );
  }

  _dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: AddFoodBarcodeButton(this.pantryPageState),
              ),
              Expanded(
                child: AddFoodManuallyButton(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

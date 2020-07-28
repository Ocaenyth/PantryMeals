import 'package:flutter/material.dart';
import 'package:pantry_meals/pages/pantry/add_food_barcode_button.dart';
import 'package:pantry_meals/pages/pantry/add_food_manually_button.dart';

class AddFoodDialog extends StatelessWidget {
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
                child: AddFoodBarcodeButton(),
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

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pantry_meals/business/exceptions/product_not_found_exception.dart';
import 'package:pantry_meals/localization/app_localizations.dart';
import 'package:pantry_meals/pages/pantry/pantry_page.dart';
import 'package:pantry_meals/persistence/entities/pantry_item.dart';
import 'package:pantry_meals/services/pantry_service.dart';

class AddFoodBarcodeButton extends StatelessWidget {
  final Icon _icon = Icon(Icons.camera_alt);
  final PantryPageState pantryPageState;

  AddFoodBarcodeButton(this.pantryPageState);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: _icon,
      onPressed: () => _addFoodFromBarcode(context),
    );
  }

  void _addFoodFromBarcode(BuildContext context) async {
    final ScanResult scanResult = await _scanBarcode(context);

    if (scanResult == null) {
      return;
    }

    try {
      PantryItem pantryItem = await PantryService.insertPantryItemFromBarcode(
          scanResult.rawContent);
      pantryPageState.addItem(pantryItem);
    } on ProductNotFoundException {
      Fluttertoast.showToast(
          msg: AppLocalizations.of(context).productNotFoundError);
    }
  }

  Future<ScanResult> _scanBarcode(BuildContext context) async {
    try {
      return await BarcodeScanner.scan();
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        Fluttertoast.showToast(
            msg: AppLocalizations.of(context).cameraPermissionRequired);
        return null;
      } else {
        Fluttertoast.showToast(
            msg: '${AppLocalizations.of(context).unknownError}: $e');
        return null;
      }
    }
  }
}

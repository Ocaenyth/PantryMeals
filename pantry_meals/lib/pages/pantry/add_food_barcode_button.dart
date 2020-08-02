import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pantry_meals/entities/food.dart';
import 'package:pantry_meals/localization/app_localizations.dart';
import 'package:pantry_meals/services/food_service.dart';

class AddFoodBarcodeButton extends StatelessWidget {
  final Icon _icon = Icon(Icons.camera_alt);

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

    Food food = await FoodService.insertFoodFromBarcode(scanResult.rawContent);
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

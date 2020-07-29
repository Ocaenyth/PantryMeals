import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pantry_meals/localization/app_localizations.dart';

class AddFoodBarcodeButton extends StatelessWidget {
  final Icon _icon = Icon(Icons.camera_alt);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: _icon,
      onPressed: () => _openBarcodeReader(context),
    );
  }

  void _openBarcodeReader(BuildContext context) async {
    try {
      ScanResult scanResults;

      scanResults = await BarcodeScanner.scan();
//      TODO: Send result to API request (OpenFF) > Add to persistence
      Fluttertoast.showToast(msg: scanResults.rawContent);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        Fluttertoast.showToast(
            msg: AppLocalizations.of(context).cameraPermissionRequired);
      } else {
        Fluttertoast.showToast(
            msg: '${AppLocalizations.of(context).unknownError}: $e');
      }
    }
  }
}

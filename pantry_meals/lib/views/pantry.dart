import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:pantry_meals/navigation/navigation_drawer.dart';

class PantryView extends StatefulWidget {
  @override
  PantryViewState createState() => PantryViewState();
}

class PantryViewState extends State<PantryView> {
  ScanResult scanResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pantry Meals",
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          title: Text('Barcode Scanner Example'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.camera),
              tooltip: "Scan",
              onPressed: scan,
            )
          ],
        ),
      ),
    );
  }

  Future scan() async {
    try {
      var options = ScanOptions();

      var result = await BarcodeScanner.scan(options: options);

      setState(() => scanResult = result);
    } on PlatformException catch (e) {
      var result = ScanResult(
        type: ResultType.Error,
        format: BarcodeFormat.unknown,
      );

      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          result.rawContent = 'The user did not grant the camera permission!';
        });
      } else {
        result.rawContent = 'Unknown error: $e';
      }
      setState(() {
        scanResult = result;
      });
    }
  }
}

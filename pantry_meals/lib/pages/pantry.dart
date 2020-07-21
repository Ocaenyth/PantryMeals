import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:pantry_meals/navigation/navigation_drawer.dart';

class PantryPage extends StatefulWidget {
  @override
  PantryPageState createState() => PantryPageState();
}

class PantryPageState extends State<PantryPage> {
  final String _title = "My Pantry";
  ScanResult scanResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(_title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera),
            tooltip: "Scan",
            onPressed: scan,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addFoodToPantry,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _addFoodToPantry() {}

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

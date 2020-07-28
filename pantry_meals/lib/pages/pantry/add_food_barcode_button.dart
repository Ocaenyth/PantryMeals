import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddFoodBarcodeButton extends StatelessWidget {
  final Icon _icon = Icon(Icons.camera_alt);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: _icon,
      onPressed: () => _openBarcodeReader(context),
    );
  }

  void _openBarcodeReader(BuildContext context) {
    Fluttertoast.showToast(msg: "To be implemented");
  }
}

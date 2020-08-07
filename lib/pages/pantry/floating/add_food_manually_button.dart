import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddFoodManuallyButton extends StatelessWidget {
  final Icon _icon = Icon(Icons.edit);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: _icon,
      onPressed: () => _addFoodManually(context),
    );
  }

  void _addFoodManually(BuildContext context) {
//    TODO: Implement manual food addition
    Fluttertoast.showToast(msg: "Work in progress");
  }
}

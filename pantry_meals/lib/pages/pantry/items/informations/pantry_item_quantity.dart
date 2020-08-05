import 'package:flutter/material.dart';

class PantryItemQuantity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text("50 / 250g"),
        Text('Left: 3'),
      ],
    );
  }
}

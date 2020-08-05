import 'package:flutter/material.dart';

class PantryItemNutriscore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Image.asset(
        'res/nutriscore/c.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

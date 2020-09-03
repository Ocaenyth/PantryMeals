import 'package:flutter/material.dart';

class PantryItemRow extends StatelessWidget {
  final String rowName;
  final bool enabled;
  final TextEditingController controller = TextEditingController();

  PantryItemRow({this.rowName, this.enabled});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              this.rowName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            width: 100,
          ),
          SizedBox(
            width: 50,
            height: 30,
            child: TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: this.controller,
              enabled: this.enabled,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

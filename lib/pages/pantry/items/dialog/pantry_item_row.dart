import 'package:flutter/material.dart';

class PantryItemRow extends StatefulWidget {
  final String rowName;
  final bool enabled;
  final double initialValue;
  final _PantryItemRowState state = _PantryItemRowState();

  PantryItemRow({this.rowName, this.enabled, this.initialValue});

  @override
  State<StatefulWidget> createState() => this.state;

  void updateItem() {}

  void setValue(double value) {
    this.state.setValue(value);
  }

  double getValue() {
    return this.state.getValue();
  }
}

class _PantryItemRowState extends State<PantryItemRow> {
  double value;

  final TextEditingController controller = TextEditingController();

  void initState() {
    super.initState();
    this.value = widget.initialValue ?? 0;
    this.controller.value =
        this.controller.value.copyWith(text: value.toString());
  }

  void setValue(double value) {
    this.setState(() {
      this.controller.value =
          this.controller.value.copyWith(text: value.toString());
    });
  }

  double getValue() {
    return double.parse(this.controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            // Description part
            child: Text(
              widget.rowName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            width: 100,
          ),
          // Input part
          SizedBox(
            width: 50,
            height: 30,
            child: TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: this.controller,
              enabled: widget.enabled,
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

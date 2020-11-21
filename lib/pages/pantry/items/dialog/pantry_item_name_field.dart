import 'dart:ui';

import 'package:flutter/material.dart';

class PantryItemNameField extends StatefulWidget {
  final String initialName;
  final _PantryItemNameFieldState state = _PantryItemNameFieldState();

  PantryItemNameField({this.initialName});

  @override
  State<StatefulWidget> createState() => this.state;

  String getValue() {
    return this.state.getValue();
  }
}

class _PantryItemNameFieldState extends State<PantryItemNameField> {
  String value;

  final TextEditingController controller = TextEditingController();

  void initState() {
    super.initState();
    this.value = widget.initialName ?? '';
    this.controller.value = this.controller.value.copyWith(text: value);
  }

  void setValue(String value) {
    this.setState(() {
      this.value = value;
      this.controller.value = this.controller.value.copyWith(text: value);
    });
  }

  String getValue() {
    return this.controller.text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 45,
      child: TextField(
        controller: this.controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
      ),
    );
  }
}

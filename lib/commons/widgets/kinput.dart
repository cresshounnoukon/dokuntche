import 'package:flutter/material.dart';

class KInput extends StatelessWidget {
  final String? name;
  final TextInputType? keyboardType;
  final bool showclearButton;
  final dynamic initialValue;

  KInput(
      {super.key,
      required this.name,
      this.keyboardType,
      this.showclearButton = false,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      style: const TextStyle(fontWeight: FontWeight.w600),

      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
          label: Text("$name"),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.red,
            ),
          ),
          suffix: showclearButton ? Icon(Icons.close) : null),
    );
  }
}

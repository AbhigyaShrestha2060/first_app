import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key, required this.onChanged, required this.text});
  final ValueChanged<String> onChanged;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: text,
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}

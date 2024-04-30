import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Output Screen"),
        centerTitle: true,
      ),
      body: Center(child: Text(title)),
    );
  }
}

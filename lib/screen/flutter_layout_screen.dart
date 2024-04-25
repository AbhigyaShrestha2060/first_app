import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatefulWidget {
  const FlutterLayoutScreen({super.key});

  @override
  State<FlutterLayoutScreen> createState() => _FlutterLayoutScreenState();
}

class _FlutterLayoutScreenState extends State<FlutterLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.amber,
        height: 50,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.phone),
                Text("Phone"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.route),
                Text("Route"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.share),
                Text("Share"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

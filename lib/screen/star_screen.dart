import 'package:flutter/material.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stars'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 3, 173, 0),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.star),
            Spacer(),
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        ),
      ),
    );
  }
}

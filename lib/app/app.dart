import 'package:first_app/screen/list_tile_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListTileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

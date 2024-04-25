import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({required this.index, super.key});
  final index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.face),
      title: Text('Abhigya Shrestha $index'),
      subtitle: const Text("+977 9844642649"),
      trailing: const Icon(Icons.phone),
      onTap: () {
        debugPrint("ListTitle Tapped");
      },
    );
  }
}

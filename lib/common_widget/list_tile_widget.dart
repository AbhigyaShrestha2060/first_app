import 'package:first_app/screen/output_screen.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {required this.index, required this.imageName, super.key});
  final index;
  final String imageName;
  //Recice full name from another screen
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(imageName)),
      title: Text(
        '$index Abhigya Shrestha',
      ),
      subtitle: const Text(
        "+977 9844642649",
      ),
      trailing: Wrap(
        spacing: 3,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return OutputScreen(
                title: ' title $index',
              );
            },
          ),
        );
      },
    );
  }
}

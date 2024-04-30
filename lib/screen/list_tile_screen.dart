import 'package:first_app/common_widget/list_tile_widget.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i <= 50; i++) ...{
              if (i % 2 != 0) ...{
                ListTileWidget(
                  index: i,
                  imageName: ("assets/images/image1.jpg"),
                ),
              } else ...{
                ListTileWidget(
                  index: i,
                  imageName: ("assets/images/image2.jpg"),
                ),
              }
            }
          ],
        ),
      ),
    );
  }
}

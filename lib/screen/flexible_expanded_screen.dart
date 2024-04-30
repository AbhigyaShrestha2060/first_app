import 'package:first_app/common_widget/my_button.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flexible screen'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: Center(
                  child: MyButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.green,
                            content: Text('Button 1'),
                            duration: Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                      text: 'button 1'),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Center(
                  child: MyButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.blueAccent,
                            content: Text('Button 2'),
                            duration: Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                      text: 'button 2'),
                ),
              ),
            )
          ],
        ));
  }
}

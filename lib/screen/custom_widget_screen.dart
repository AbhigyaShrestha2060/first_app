import 'package:first_app/common_widget/my_button.dart';
import 'package:first_app/common_widget/my_form.dart';
import 'package:flutter/material.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({super.key});

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  int? first;
  int? second;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MyForm(
                onChanged: (value) {
                  setState(() {
                    first = int.parse(value);
                  });
                },
                text: 'Enter First No',
              ),
              const SizedBox(
                height: 20,
              ),
              MyForm(
                onChanged: (value) {
                  setState(() {
                    second = int.parse(value);
                  });
                },
                text: 'Enter second No',
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: MyButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      int result = first! + second!;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Sum is $result'),
                        ),
                      );
                    }
                  },
                  text: 'Add',
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: MyButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      int result = first! * second!;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Multiplication is $result'),
                        ),
                      );
                    }
                  },
                  text: 'Multiply',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

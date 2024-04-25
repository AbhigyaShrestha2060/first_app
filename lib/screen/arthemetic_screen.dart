import 'package:first_app/model/arthemetic_model.dart';
import 'package:flutter/material.dart';

class ArthemeticScreen extends StatefulWidget {
  const ArthemeticScreen({super.key});

  @override
  State<ArthemeticScreen> createState() => _ArthemeticScreenState();
}

class _ArthemeticScreenState extends State<ArthemeticScreen> {
  int? first;
  int? second;
  int result = 0;

  //Relationship
  //Loosely Coupled

  ArthemeticModel? arthemeticModel;

  //Create globalkey for form
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Two Number',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // Enter first no
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  first = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First  Number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter the First Number";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (value) {
                  second = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second Number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter the Second Number";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(
                      () {
                        arthemeticModel = ArthemeticModel(
                          first: first!,
                          second: second!,
                        );
                        result = arthemeticModel!.add();
                      },
                    );
                  }
                },
                child: const Text('Add'),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Sum is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:first_app/model/arthemetic_model.dart';
import 'package:flutter/material.dart';
 
class ArthmeticScreen extends StatefulWidget {
  const ArthmeticScreen({super.key});
 
  @override
  State<ArthmeticScreen> createState() => _ArthmeticScreenState();
}
 
class _ArthmeticScreenState extends State<ArthmeticScreen> {
  int? first;
  int? second;
  int result = 0;
  String group = 'My group';
 
  //Relationship
  // Loosely coupled
  ArthmeticModel? arthmeticModel;
 
  // Create global key for form
  final formkey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
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
          key: formkey,
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
                  hintText: 'Enter first no',
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  second = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second no',
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
 
              ListTile(
                title: const Text('Add'),
                leading: Radio(
                  value: 'add',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(
                      () {
                        group = value!;
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: const Text('Subtract'),
                leading: Radio(
                  value: 'subtract',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(
                      () {
                        group = value!;
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: const Text('Multiply'),
                leading: Radio(
                  value: 'multiply',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(
                      () {
                        group = value!;
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: const Text('Divide'),
                leading: Radio(
                  value: 'divide',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(
                      () {
                        group = value!;
                      },
                    );
                  },
                ),
              ),
 
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    setState(
                      () {
                        arthmeticModel = ArthmeticModel(
                          first: first!,
                          second: second!,
                        );
                        if (group == 'add') {
                          result = arthmeticModel!.add();
                        } else if (group == 'subtract') {
                          result = arthmeticModel!.subtract();
                        } else if (group == 'multiply') {
                          result = arthmeticModel!.multiply();
                        } else if (group == 'divide') {
                          result = arthmeticModel!.divide();
                        }
                      },
                    );
                  }
                },
                child: const Text('Calculate'),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Result is : $result',
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
 
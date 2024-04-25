import 'package:first_app/model/area_of_circle_model.dart';
import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  double? radius;
  double area = 0;
  var gap = const SizedBox(height: 8);

  //Relationship
  //Loosely Coupled

  AreaOfCircleModel? areaOfCircleModel;

  //Create Globalkey for Form
  final formkey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: const Text(
          'Area of Circle',
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
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  radius = double.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 0, 251, 8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  labelText: 'Enter radius',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter radius";
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
                  if (formkey.currentState!.validate()) {
                    setState(
                      () {
                        areaOfCircleModel = AreaOfCircleModel(
                          radius: radius!,
                        );
                        area = areaOfCircleModel!.calcArea();
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
                'Area is : $area',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "A",
                  style: const TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    backgroundColor: Colors.green,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "rea Of Circle is $area",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

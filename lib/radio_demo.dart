import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  String gender = "Gender";
  String male = "Male";
  String female = "Female";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Text('Gender'),
          Radio(
            value: male,
            groupValue: gender,
            onChanged: (value) {
              // print(value);
              gender = value!;
              setState(() {});
            },
          ),
          const Text('Male'),
          Radio(
            value: female,
            groupValue: gender,
            onChanged: (value) {
              // print(value);
              gender = value!;
              setState(() {});
            },
          ),
          const Text('Female'),
        ],
      ),
    );
  }
}

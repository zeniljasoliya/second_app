import 'package:flutter/material.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({super.key});

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  List<String> myfriend = [
    'zenil',
    'parth',
    'harsh',
    'dhruv',
    'meet',
  ];
  List stream = [
    'Science',
    'Commerce',
    'Arts',
  ];
  // ignore: non_constant_identifier_names
  String? Selectedvalue;
  // ignore: non_constant_identifier_names
  String? Selectedstream;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButton(
            items: myfriend
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (value) {
              // print(value);
              Selectedvalue = value as String;
              setState(() {});
            },
            value: Selectedvalue,
          ),
          DropdownButton(
            items: List.generate(
              stream.length,
              (index) => DropdownMenuItem(
                value: stream[index],
                child: Text(
                  stream[index],
                ),
              ),
            ),
            onChanged: (value) {
              Selectedstream = value as String;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}

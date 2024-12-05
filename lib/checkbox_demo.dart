import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  const CheckboxDemo({super.key});

  @override
  State<CheckboxDemo> createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool iscricket = true;
  bool isfootball = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Text('Hobby'),
          Checkbox(
            value: iscricket,
            onChanged: (value) {
              // print(value);
              iscricket = value!;
              setState(() {});
            },
          ),
          const Text('Cricket'),
          Checkbox(
            value: isfootball,
            onChanged: (value) {
              // print(value);
              isfootball = value!;
              setState(() {});
            },
          ),
          const Text('Fottball'),
        ],
      ),
    );
  }
}

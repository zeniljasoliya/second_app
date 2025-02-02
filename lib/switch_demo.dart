import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(children: [
            const Text('isActive :'),
            Switch(
              value: isActive,
              onChanged: (value) {
                isActive = value;
                setState(() {});
              },
            ),
          ]),
          Row(children: [
            const Text('isActive :'),
            CupertinoSwitch(
              value: isActive,
              onChanged: (value) {
                isActive = value;
                setState(() {});
              },
            ),
          ]),
        ],
      ),
    );
  }
}

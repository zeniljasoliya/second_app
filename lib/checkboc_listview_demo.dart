import 'package:flutter/material.dart';

class CheckboxListviewDemo extends StatefulWidget {
  const CheckboxListviewDemo({super.key});

  @override
  State<CheckboxListviewDemo> createState() => _CheckboxListviewDemoState();
}

class _CheckboxListviewDemoState extends State<CheckboxListviewDemo> {
  bool isApplechecked = false;
  bool isBananachecked = false;
  bool isCherrychecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CheckboxListTile(
            title: const Text('Apple'),
            secondary: const Icon(Icons.apple),
            controlAffinity: ListTileControlAffinity.platform,
            value: isApplechecked,
            onChanged: (value) {
              setState(() {
                isApplechecked = value!;
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.black,
            selected: isApplechecked,
            autofocus: false,
          ),
          CheckboxListTile(
            title: const Text('Banana'),
            controlAffinity: ListTileControlAffinity.platform,
            value: isBananachecked,
            onChanged: (value) {
              setState(() {
                isBananachecked = value!;
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.black,
            selected: isBananachecked,
            autofocus: false,
          ),
          CheckboxListTile(
            title: const Text('Cherry'),
            controlAffinity: ListTileControlAffinity.platform,
            value: isCherrychecked,
            onChanged: (value) {
              setState(() {
                isCherrychecked = value!;
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.black,
            selected: isCherrychecked,
            autofocus: true,
          ),
        ],
      ),
    );
  }
}

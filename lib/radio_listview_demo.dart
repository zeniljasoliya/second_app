import 'package:flutter/material.dart';

class RadioListviewDemo extends StatefulWidget {
  const RadioListviewDemo({super.key});

  @override
  State<RadioListviewDemo> createState() => _RadioListviewDemoState();
}

class _RadioListviewDemoState extends State<RadioListviewDemo> {
  String mypet = 'Dog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
            value: 'Dog',
            groupValue: mypet,
            onChanged: (value) {
              mypet = value!;
              setState(() {});
            },
            title: const Text('Dog'),
            subtitle: const Text('a cute dog'),
          ),
          RadioListTile(
            value: 'Cat',
            groupValue: mypet,
            onChanged: (value) {
              mypet = value!;
              setState(() {});
            },
            title: const Text('Cat'),
            tileColor: Colors.blue.shade300,
            activeColor: Colors.brown,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          RadioListTile(
            value: 'Other',
            groupValue: mypet,
            onChanged: (value) {
              mypet = value!;
              setState(() {});
            },
            title: const Text('Other'),
            activeColor: Colors.amber,
            secondary: OutlinedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("Say Hello");
                },
                child: const Text("Say Hi")),
            selected: true,

            // contentPadding: const EdgeInsets.symmetric(vertical: 30),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'My Selected Choice is $mypet',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

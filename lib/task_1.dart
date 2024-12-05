import 'package:flutter/material.dart';

import 'package:second_app/counterapp_controller.dart';

// ignore: camel_case_types
class Task_1 extends StatefulWidget {
  const Task_1({super.key});

  @override
  State<Task_1> createState() => _Task_1State();
}

// ignore: camel_case_types
class _Task_1State extends State<Task_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Counter.decrement;

                  setState(() {});
                },
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Text(Counter.count.toString()),
              TextButton(
                onPressed: () {
                  Counter.increment;
                  setState(() {});
                },
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Counter.deccrementtwo;
                  setState(() {});
                },
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Text(Counter.counttwo.toString()),
              TextButton(
                onPressed: () {
                  Counter.incrementtwo;
                  setState(() {});
                },
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:second_app/counterapp_controller.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    // print('zenil');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Counter.increment();
          // ignore: avoid_print
          print(Counter.count);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(Counter.count.toString()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:second_app/tow_color_contoller.dart';

// ignore: camel_case_types
class Task_4 extends StatefulWidget {
  const Task_4({super.key});

  @override
  State<Task_4> createState() => _Task_4State();
}

// ignore: camel_case_types
class _Task_4State extends State<Task_4> {
  @override
  // ignore: non_constant_identifier_names, override_on_non_overriding_member
  List Data = List.generate(21, (index) => "$index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: Data.length - 1,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => Container(
              color: TowColorData.color(index),
              child: Center(
                  child: Text(
                Data[index + 1],
                style: const TextStyle(fontSize: 20),
              )),
            ),
          ))
        ],
      ),
    );
  }
}

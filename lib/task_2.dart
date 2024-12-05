import 'package:flutter/material.dart';
import 'package:second_app/row_data.dart';

import 'colorchange_controller.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: griddata.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 3,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    ColorChange.selectColor(index);
                  });
                },
                child: Container(
                  color: griddata[index]['color'],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

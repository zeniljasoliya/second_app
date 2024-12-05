import 'package:flutter/material.dart';
import 'package:second_app/Task/task_two_controller.dart';
import 'package:second_app/row_data.dart';

class TasktowDemo extends StatefulWidget {
  const TasktowDemo({super.key});

  @override
  State<TasktowDemo> createState() => _TasktowDemoState();
}

class _TasktowDemoState extends State<TasktowDemo> {
  // bool isSelected = false;
  List selectedHobbies = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: List.generate(
              hobbies.length,
              (index) => CheckboxListTile(
                title: Text(hobbies[index]['title']),
                value: hobbies[index]['isSelected'],
                onChanged: (value) {
                  hobbies[index]['isSelected'] = value;
                  setState(() {});
                },
              ),
            ),
          ),

          Text(
            TaskTwoController.selectedHobbies.toString(),
          ),
          Text(
              'Number of Hobbies is ${(TaskTwoController.selectedHobbies.length).toString()}'),
          // TextButton(
          //     onPressed: () {
          //       for (var hobby in selectedHobbies) {
          //         var index;
          //         print(hobbies[index]['title']);
          //       }
          //       setState(() {});
          //     },
          //     child: const Text('Submit'))
        ],
      ),
    );
  }
}

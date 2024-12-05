import 'package:flutter/material.dart';
import 'package:second_app/Task/ans_check.dart';
import 'package:second_app/row_data.dart';

class TaskOneDemo extends StatefulWidget {
  const TaskOneDemo({super.key});

  @override
  State<TaskOneDemo> createState() => _TaskOneDemoState();
}

class _TaskOneDemoState extends State<TaskOneDemo> {
  // int score = 0;
  // int totalScore = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RTO Test Questions'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(
                questions.length,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        questions[index]['question'],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: questions[index]['options'].length,
                      itemBuilder: (context, optionIndex) {
                        return RadioListTile(
                          title: Text(questions[index]['options'][optionIndex]),
                          value: optionIndex,
                          groupValue: questions[index]['selectedAnswerIndex'],
                          onChanged: (value) {
                            if (value != null) {
                              questions[index]['selectedAnswerIndex'] = value;
                              TaskOneController.insert(index + 1);
                              // print(TaskFiveController.a);
                            } else {
                              // TaskFiveController.isNotFilled();
                            }
                            setState(() {});
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  TaskOneController.totalCount();
                  TaskOneController.check();
                  if (TaskOneController.b == false) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Plz fill all que'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Your score is ${TaskOneController.totalScore}'),
                      ),
                    );
                  }
                  TaskOneController.totalScore = 0;
                  setState(() {});
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}

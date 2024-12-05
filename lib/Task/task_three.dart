import 'package:flutter/material.dart';

import 'package:second_app/row_data.dart';

class TaskThreeDemo extends StatefulWidget {
  const TaskThreeDemo({super.key});

  @override
  State<TaskThreeDemo> createState() => _TaskThreeDemoState();
}

class _TaskThreeDemoState extends State<TaskThreeDemo> {
  // ignore: non_constant_identifier_names
  int Stepindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Stepper(
            currentStep: Stepindex,
            onStepCancel: Stepindex != 0
                ? () {
                    if (Stepindex > 0) {
                      Stepindex--;
                    }

                    setState(() {});
                  }
                : null,
            onStepContinue: Stepindex != stepperdata.length
                ? () {
                    if (Stepindex < stepperdata.length - 1) {
                      Stepindex++;
                    }

                    setState(() {});
                  }
                : null,
            steps: List.generate(
              stepperdata.length,
              (index) => Step(
                title: Text(stepperdata[index]['title']),
                content: Text(stepperdata[index]['content']),
                isActive: true,
                state: stepperdata[index]['state'],
                subtitle: Text(stepperdata[index]['subtitle']),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  const StepperDemo({super.key});

  @override
  State<StepperDemo> createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  // ignore: non_constant_identifier_names
  int Stepindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Stepper(
            currentStep: Stepindex,
            type: StepperType.horizontal,
            onStepCancel: Stepindex != 0
                ? () {
                    if (Stepindex > 0) {
                      Stepindex--;
                    }

                    setState(() {});
                  }
                : null,
            onStepContinue: Stepindex != 2
                ? () {
                    if (Stepindex < 2) {
                      Stepindex++;
                    }

                    setState(() {});
                  }
                : null,

            // onStepTapped: (value) => setState(() {
            //       Stepindex = value;
            //     }),
            elevation: 10,
            margin: const EdgeInsets.symmetric(horizontal: 100),
            physics: const BouncingScrollPhysics(),
            steps: const [
              Step(
                title: Text('Firststep'),
                content: Text('Hi I Am Firststep'),
                isActive: true,
                label: Text('123'),
              ),
              Step(
                  title: Text('Secondstep'),
                  content: Text('Hi I Am Secondstep'),
                  isActive: true,
                  subtitle: Text('asdfg'),
                  state: StepState.complete),
              Step(
                  title: Text('Secondstep'),
                  content: Text('Hi I Am Secondstep'),
                  isActive: true,
                  subtitle: Text('asdfg'),
                  state: StepState.complete),
              Step(
                  title: Text('Secondstep'),
                  content: Text('Hi I Am Secondstep'),
                  isActive: true,
                  subtitle: Text('asdfg'),
                  state: StepState.complete),
              Step(
                  title: Text('Thirdstep'),
                  content: Text('Hi I Am Thirdstep'),
                  state: StepState.error),
            ]),
      ),
    );
  }
}

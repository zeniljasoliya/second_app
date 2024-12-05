import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimepickerExampleDemo extends StatefulWidget {
  const TimepickerExampleDemo({super.key});

  @override
  State<TimepickerExampleDemo> createState() => _TimepickerExampleDemoState();
}

class _TimepickerExampleDemoState extends State<TimepickerExampleDemo> {
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MaterialButton(
            onPressed: () async {
              selectedTime = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now())
                  .then((value) {
                setState(() {});
                return value;
              });
            },
            color: Colors.blueAccent,
            child: const Text(' Show TimePicker'),
          ),
          const SizedBox(
            height: 10,
          ),
          if (selectedTime != null)
            Text(
              selectedTime!.format(context),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
        ],
      )),
    );
  }
}

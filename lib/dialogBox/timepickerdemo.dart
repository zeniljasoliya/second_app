import 'package:flutter/material.dart';

class TimePickerDemo extends StatefulWidget {
  const TimePickerDemo({super.key});

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
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
            color: Colors.blueGrey,
            child: const Text(' Show TimePicker'),
          ),
          const SizedBox(
            height: 10,
          ),
          if (selectedTime != null) Text(selectedTime.toString())
        ],
      )),
    );
  }
}

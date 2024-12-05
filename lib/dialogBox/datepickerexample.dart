import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExampleDemo extends StatefulWidget {
  const ExampleDemo({super.key});

  @override
  State<ExampleDemo> createState() => _ExampleDemoState();
}

class _ExampleDemoState extends State<ExampleDemo> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () async {
                selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050))
                    .then((value) {
                  setState(() {});
                  return value;
                });
              },
              color: Colors.blueAccent,
              child: const Text('Show DatePicker'),
            ),
            const SizedBox(
              height: 10,
            ),
            if (selectedDate != null)
              Text(
                DateFormat.MMMEd().format(selectedDate!),
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextFormFieldTask extends StatefulWidget {
  const TextFormFieldTask({super.key});

  @override
  State<TextFormFieldTask> createState() => _TextFormFieldTaskState();
}

class _TextFormFieldTaskState extends State<TextFormFieldTask> {
  // ignore: non_constant_identifier_names
  final _TextNameController = TextEditingController();
  // ignore: non_constant_identifier_names
  final _TextMobileNumberController = TextEditingController();
  // ignore: non_constant_identifier_names
  final _TextEmailController = TextEditingController();

  @override
  void dispose() {
    _TextNameController.dispose();
    _TextMobileNumberController.dispose();
    _TextEmailController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: _TextNameController,
            decoration: const InputDecoration(label: Text('UserName:')),
            validator: (value) =>
                value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                    ? 'user name is not valid'
                    : null,
          ),
          TextFormField(
            controller: _TextMobileNumberController,
            decoration: const InputDecoration(label: Text('MobileNumber:')),
            validator: (value) => value!.isEmpty ||
                    !RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$').hasMatch(value)
                ? 'user Moblie Number is not valid'
                : null,
          ),
          TextFormField(
            controller: _TextEmailController,
            decoration: const InputDecoration(label: Text('Email:')),
            validator: (value) => value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)
                ? 'user email is not valid'
                : null,
          ),
          MaterialButton(
            onPressed: () {
              if (key.currentState!.validate()) {
                // ignore: avoid_print
                print('form is validated');
              }
              setState(() {});
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}

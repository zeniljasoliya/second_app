import 'package:flutter/material.dart';

class TextformfeildDemo extends StatefulWidget {
  const TextformfeildDemo({super.key});

  @override
  State<TextformfeildDemo> createState() => _TextformfeildDemoState();
}

class _TextformfeildDemoState extends State<TextformfeildDemo> {
  final _txtFistNameController = TextEditingController();
  String? fname;

  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  void dispose() {
    _txtFistNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Column(
          children: [
            TextFormField(
              validator: (value) =>
                  value!.isEmpty ? 'user name is requried' : null,
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
      ),
    );
  }
}

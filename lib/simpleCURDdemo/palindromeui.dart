import 'package:flutter/material.dart';
import 'package:second_app/simpleCURDdemo/palindromelogic.dart';

class PalindromeUI extends StatefulWidget {
  const PalindromeUI({super.key});

  @override
  State<PalindromeUI> createState() => _PalindromeUIState();
}

class _PalindromeUIState extends State<PalindromeUI> {
  final TextEditingController _txtPalindromeNumberController =
      TextEditingController();

  @override
  void dispose() {
    _txtPalindromeNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: _txtPalindromeNumberController,
        ),
        MaterialButton(
          onPressed: () {
            PalindromeLogic.logic(
                int.parse(_txtPalindromeNumberController.text));
            setState(() {});
          },
          color: Colors.cyan,
          child: const Text('Submit'),
        ),
        if (PalindromeLogic.msg != null) Text(PalindromeLogic.msg!)
      ]),
    );
  }
}

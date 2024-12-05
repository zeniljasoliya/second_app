import 'package:flutter/material.dart';

class TextFeildDemo extends StatefulWidget {
  const TextFeildDemo({super.key});

  @override
  State<TextFeildDemo> createState() => _TextFeildDemoState();
}

class _TextFeildDemoState extends State<TextFeildDemo> {
  final _txtFistNameController = TextEditingController();
  final _txtMidNameController = TextEditingController();
  final _txtLatNameController = TextEditingController();
  String? firstname, midname, lastname;

  @override
  void dispose() {
    _txtFistNameController.dispose();
    _txtMidNameController.dispose();
    _txtLatNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _txtFistNameController,
            cursorRadius: const Radius.circular(20),
            style: const TextStyle(backgroundColor: Colors.blueGrey),
            textAlign: TextAlign.justify,
            textAlignVertical: TextAlignVertical.bottom,
            textCapitalization: TextCapitalization.sentences,
            textDirection: TextDirection.rtl,
            textInputAction: TextInputAction.continueAction,
            minLines: 1,
            maxLines: 4,
            // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            expands: false,
            autocorrect: true,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(
                        color: Colors.black,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        style: BorderStyle.solid,
                        width: 3)),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        style: BorderStyle.solid,
                        width: 3)),

                // focusedBorder: OutlineInputBorder(borderRadius: ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    gapPadding: BorderSide.strokeAlignCenter,
                    borderSide: BorderSide(
                        color: Colors.black,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        style: BorderStyle.solid,
                        width: 3)),
                contentPadding: EdgeInsets.all(20),
                label: Text('FirstName'),
                alignLabelWithHint: true,
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                helperMaxLines: 2,
                helperText: 'asdfghjkl;xcvbnm,.dfghjkl;cvbnm,.cvbnm,fghjk',
                helperStyle: TextStyle(backgroundColor: Colors.amber),
                hintMaxLines: 1,
                hintText: 'zenil',
                hintTextDirection: TextDirection.ltr,
                hoverColor: Colors.brown,
                fillColor: Colors.red,
                filled: true,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                floatingLabelStyle: TextStyle(fontWeight: FontWeight.bold)

                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(
                //       2,
                //     ),
                //   ),
                // ),
                ),
          ),
          TextField(
            controller: _txtMidNameController,
            decoration: const InputDecoration(
              label: Text('MiddletName'),
            ),
          ),
          TextField(
            controller: _txtLatNameController,
            decoration: const InputDecoration(
              label: Text('LastName'),
            ),
          ),
          MaterialButton(
            onPressed: () {
              firstname = _txtFistNameController.text;
              midname = _txtMidNameController.text;
              lastname = _txtLatNameController.text;
              setState(() {});
            },
            color: Colors.cyan,
            child: const Text('Submit'),
          ),
          Row(
            children: [
              if (firstname != null) Text(firstname!),
              const SizedBox(
                width: 5,
              ),
              if (midname != null) Text(midname!),
              const SizedBox(
                width: 5,
              ),
              if (lastname != null) Text(lastname!),
            ],
          )
        ],
      ),
    );
  }
}

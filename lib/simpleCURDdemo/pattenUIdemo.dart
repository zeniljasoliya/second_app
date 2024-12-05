import 'package:flutter/material.dart';

import 'package:second_app/simpleCURDdemo/patternlogiccontroller.dart';

class PattenUIDemo extends StatefulWidget {
  const PattenUIDemo({super.key});

  @override
  State<PattenUIDemo> createState() => _PattenUIDemoState();
}

class _PattenUIDemoState extends State<PattenUIDemo> {
  final TextEditingController _txtPatternController = TextEditingController();
  @override
  void dispose() {
    _txtPatternController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextField(
            controller: _txtPatternController,
          ),
          SizedBox(
            height: 450,
            child: GridView.builder(
              itemCount: 24,
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 5,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Patterndata.z = Patterndata
                      .data[index](int.parse(_txtPatternController.text));
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('pattern-${index + 1}'),
                ),
              ),
            ),
          ),
          if (Patterndata.z != null)
            Container(
                alignment: Alignment.center,
                height: 200,
                width: double.infinity,
                child: Text(Patterndata.z.toString()))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:second_app/Task/task_one.dart';
import 'package:second_app/simpleCURDdemo/crudexample_two.dart';
import 'package:second_app/slider_demo.dart';
import 'package:second_app/task_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Curdexample2Demo(),
      // home: Curdexample2Demo(),
    );
  }
}

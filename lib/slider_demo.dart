import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  // ignore: non_constant_identifier_names
  double Selectedprice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Slider(
            min: 0,
            max: 101,
            value: Selectedprice,
            onChanged: (value) {
              Selectedprice = value;
              setState(() {});
            },
          ),
          CupertinoSlider(
            min: 0,
            max: 101,
            value: Selectedprice,
            onChanged: (value) {
              Selectedprice = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

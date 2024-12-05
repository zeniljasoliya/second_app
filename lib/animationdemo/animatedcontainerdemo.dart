import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double height = 100;
  double width = 100;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            height = random.nextDouble() * 200;
            width = random.nextDouble() * 200;
            setState(() {});
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.bounceIn,
            height: height,
            width: width,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

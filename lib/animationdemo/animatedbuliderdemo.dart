import 'package:flutter/material.dart';

class AnimatedbuilderDemo extends StatefulWidget {
  const AnimatedbuilderDemo({super.key});

  @override
  State<AnimatedbuilderDemo> createState() => _AnimatedbuilderDemoState();
}

class _AnimatedbuilderDemoState extends State<AnimatedbuilderDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 10))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedBuilder(
        animation: animationController!,
        builder: (context, child) => Transform.rotate(
          angle: animationController!.value * 200,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
      )),
    );
  }
}

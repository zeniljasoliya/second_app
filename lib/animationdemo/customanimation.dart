import 'package:flutter/material.dart';

class CustomAnimation extends StatefulWidget {
  const CustomAnimation({super.key});

  @override
  State<CustomAnimation> createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation>
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClockwiseRotation(listenable: animationController!),
            SizedBox(
              height: 50,
            ),
            AntiClockwiseRotation(listenable: animationController!),
          ],
        ),
      ),
    );
  }
}

class ClockwiseRotation extends AnimatedWidget {
  const ClockwiseRotation({super.key, required super.listenable});
  // ignore: non_constant_identifier_names
  Animation<double> get _Controller => super.listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _Controller.value * 20,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }
}

class AntiClockwiseRotation extends AnimatedWidget {
  const AntiClockwiseRotation({super.key, required super.listenable});
  // ignore: non_constant_identifier_names
  Animation<double> get _Controller => super.listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -_Controller.value * 200,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }
}

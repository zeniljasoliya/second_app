import 'package:flutter/widgets.dart';

class CallsDemo extends StatefulWidget {
  const CallsDemo({super.key});

  @override
  State<CallsDemo> createState() => _CallsDemoState();
}

class _CallsDemoState extends State<CallsDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is calls screen'),
    );
  }
}

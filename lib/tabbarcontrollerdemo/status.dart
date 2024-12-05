import 'package:flutter/widgets.dart';

class StatusDemo extends StatefulWidget {
  const StatusDemo({super.key});

  @override
  State<StatusDemo> createState() => _StatusDemoState();
}

class _StatusDemoState extends State<StatusDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is status screen'),
    );
  }
}

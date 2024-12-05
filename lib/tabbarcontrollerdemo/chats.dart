import 'package:flutter/material.dart';

class ChatsDemo extends StatefulWidget {
  const ChatsDemo({super.key});

  @override
  State<ChatsDemo> createState() => _ChatsDemoState();
}

class _ChatsDemoState extends State<ChatsDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is chat screen'),
    );
  }
}

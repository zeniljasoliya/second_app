import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        dragStartBehavior: DragStartBehavior.start,
        allowImplicitScrolling: const bool.fromEnvironment('zenil'),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        controller: PageController(
          initialPage: 2,
          keepPage: true,
          viewportFraction: 3,
        ),
        padEnds: true,
        physics: const BouncingScrollPhysics(),
        pageSnapping: true,
        reverse: true,
        children: const [
          Text('zenil'),
          Text('dishu'),
          Text('Jeel'),
        ],
      ),
    );
  }
}

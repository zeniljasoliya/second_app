import 'package:flutter/material.dart';
import 'package:second_app/row_data.dart';

class PageViewCustomdemo extends StatefulWidget {
  const PageViewCustomdemo({super.key});

  @override
  State<PageViewCustomdemo> createState() => _PageViewCustomdemoState();
}

class _PageViewCustomdemoState extends State<PageViewCustomdemo> {
  // int setImageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.custom(
              scrollDirection: Axis.vertical,
              controller: PageController(),
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: imagedata1.length,
                (context, index) => Card(
                  child: Image(
                    image: AssetImage(imagedata1[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // onPageChanged: (index) {
              //   setState(() {
              //     setImageindex = index;
              //   });
              // },
            ),
          ),
        ],
      ),
    );
  }
}

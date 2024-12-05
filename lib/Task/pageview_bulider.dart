import 'package:flutter/material.dart';
import 'package:second_app/row_data.dart';

class PageViewBuilderDemo extends StatefulWidget {
  const PageViewBuilderDemo({super.key});

  @override
  State<PageViewBuilderDemo> createState() => _PageViewBuilderDemoState();
}

class _PageViewBuilderDemoState extends State<PageViewBuilderDemo> {
  // int setImageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: imagedata1.length,
              itemBuilder: (context, index) {
                return Card(
                    child: Image(
                  image: AssetImage(imagedata1[index]),
                  fit: BoxFit.cover,
                ));
              },
              // onPageChanged: (index) {
              //   setState(() {
              //     setImageindex = index;
              //   });
              // },
            ),
          )
        ],
      ),
    );
  }
}

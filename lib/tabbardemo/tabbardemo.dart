import 'package:flutter/material.dart';
import 'package:second_app/tabbardemo/calls.dart';

import 'package:second_app/tabbardemo/chats.dart';
import 'package:second_app/tabbardemo/status.dart';

class TabbarDemo extends StatefulWidget {
  const TabbarDemo({super.key});

  @override
  State<TabbarDemo> createState() => _TabbarDemoState();
}

class _TabbarDemoState extends State<TabbarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const PreferredSize(
              preferredSize: Size(double.infinity, 70),
              child: TabBar(tabs: [
                Text('Chats'),
                Text('Status'),
                Text('Calls'),
              ]),
            ),
          ),
          body: const TabBarView(children: [
            ChatsDemo(),
            StatusDemo(),
            CallsDemo(),
          ]),
        ));
  }
}

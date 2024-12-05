import 'package:flutter/material.dart';
import 'package:second_app/tabbarcontrollerdemo/calls.dart';
import 'package:second_app/tabbarcontrollerdemo/chats.dart';
import 'package:second_app/tabbarcontrollerdemo/status.dart';

class TabbarController extends StatefulWidget {
  const TabbarController({super.key});

  @override
  State<TabbarController> createState() => _TabbarControllerState();
}

class _TabbarControllerState extends State<TabbarController>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 70),
          child: TabBar(
            tabs: const [
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ],
            controller: _tabController,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ChatsDemo(),
          StatusDemo(),
          CallsDemo(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:second_app/bottomNavigationBarDemo/homescreendemo.dart';
import 'package:second_app/bottomNavigationBarDemo/libraryscreendemo.dart';
import 'package:second_app/bottomNavigationBarDemo/shortsscreendemo.dart';
import 'package:second_app/bottomNavigationBarDemo/subscriptionsscreendemo.dart';

class BottomNavigationDemo extends StatefulWidget {
  const BottomNavigationDemo({super.key});

  @override
  State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  List<Map<String, dynamic>> navigationdata = [
    {
      'title': 'Home',
      'icon': Icons.home,
    },
    {
      'title': 'Shorts',
      'icon': Icons.video_call,
    },
    {
      'title': 'Subscriptions',
      'icon': Icons.subscriptions_rounded,
    },
    {
      'title': 'Library',
      'icon': Icons.library_add,
    }
  ];
  List<Widget> navigationui = [
    const HomeScreen(),
    const ShortsScreen(),
    const SubscriptionScreen(),
    const LibraryScreen(),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
        currentIndex: selectedindex,
        items: List.generate(
          navigationdata.length,
          (index) => BottomNavigationBarItem(
              icon: Icon(navigationdata[index]['icon']),
              backgroundColor: Colors.black,
              label: navigationdata[index]['title']),
        ),
      ),
      body: navigationui.elementAt(selectedindex),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:second_app/tabbardemo/instagram/postscreendemo.dart';
import 'package:second_app/tabbardemo/instagram/reelsscreendemo.dart';
import 'package:second_app/tabbardemo/instagram/tagsscreendemo.dart';

class InstaDemo extends StatefulWidget {
  const InstaDemo({super.key});

  @override
  State<InstaDemo> createState() => _InstaDemoState();
}

class _InstaDemoState extends State<InstaDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 10, right: 20, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: const [
                      Icon(Icons.lock_outline_sharp),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'zenu.jasoliya__003',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      )
                    ],
                  ),
                ),
                const Icon(Icons.add_box_outlined),
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.menu),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/zenil.jpeg'),
                ),
                Column(
                  children: const [
                    Text(
                      '8',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text('Posts')
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '613',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '578',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text('Following')
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '🖤ZENIL JASOLIYA🖤',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '👻: @zenujasoliya_03',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Be Happy😊😎',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 27,
                  width: 230,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black.withOpacity(0.70)),
                  child: const Text(
                    'Edit profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  height: 27,
                  width: 230,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black.withOpacity(0.70)),
                  child: const Text(
                    'Share profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  height: 27,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black.withOpacity(0.70)),
                  child: const Icon(
                    Icons.person_add_outlined,
                    color: Colors.white,
                    size: 17,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 486,
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: const [
                  TabBar(
                    tabs: [
                      Icon(
                        Icons.grid_on_sharp,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.slow_motion_video_outlined,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.person_pin_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      PostScreen(),
                      ReelsScreen(),
                      TagsScreen(),
                    ]),
                  )
                ],
              ),
            ),
          ),
          // const Expanded(
          //   child: DefaultTabController(
          //     length: 3,
          //     child: TabBarView(children: [
          //       PostScreen(),
          //       ReelsScreen(),
          //       TagsScreen(),
          //     ]),
          //   ),
          // )
        ],
      ),
    );
    // return const DefaultTabController(
    //     length: 3,
    //     child: Scaffold(
    //       appBar: TabBar(tabs: [
    //         Icon(Icons.grid_4x4_outlined),
    //         Icon(Icons.vibration_outlined),
    //         Icon(Icons.person_pin_outlined),
    //       ]),
    //       body: TabBarView(children: [
    //         PostScreen(),
    //         ReelsScreen(),
    //         TagsScreen(),
    //       ]),
    //     ));
  }
}

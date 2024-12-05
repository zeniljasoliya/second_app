import 'package:flutter/material.dart';

import 'package:second_app/tic_toc_controller.dart';

// ignore: camel_case_types
class Tic_Toc extends StatefulWidget {
  const Tic_Toc({super.key});

  @override
  State<Tic_Toc> createState() => _Tic_TocState();
}

// ignore: camel_case_types
class _Tic_TocState extends State<Tic_Toc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF323D5b),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        TicTocData.playerX.toString(),
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Player 1(X)",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 5,
                    color: Colors.black,
                  ),
                  Column(
                    children: [
                      Text(
                        TicTocData.playerO.toString(),
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Player 2(O)",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: TicTocData.data.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      TicTocData.tapcontainer(index);
                      TicTocData.checkcondition();
                      if (TicTocData.player == 1) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Player 1 win'),
                          ),
                        );
                      } else if (TicTocData.player == 2) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Player 2 win'),
                          ),
                        );
                      }
                      TicTocData.player = 0;
                      setState(() {});
                    });
                  },
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.grey.shade400, boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.90),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ]),
                    child: Center(
                        child: Text(
                      TicTocData.data[index],
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      TicTocData.reset();
                      setState(() {});
                    },
                    color: Colors.grey.shade400,
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      TicTocData.restart();
                      setState(() {});
                    },
                    color: Colors.grey.shade400,
                    child: const Text(
                      "Restart",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

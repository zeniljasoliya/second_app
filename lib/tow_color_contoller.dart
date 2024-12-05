import 'package:flutter/material.dart';

class TowColorData {
  static int count = 0;

  static Color color(index) {
    Color? c;

    if (index % 2 == 0) {
      if (index % 4 == 0) {
        c = Colors.red;
        // count = (count * 2) + 1;
      } else {
        c = Colors.green;
      }
    } else {
      if (index % 4 == 1) {
        c = Colors.green;
      } else {
        c = Colors.red;
      }
    }

    return c;
  }
}

import 'package:second_app/row_data.dart';

class TaskOneController {
  static int totalScore = 0;

  static void totalCount() {
    for (var ele in questions) {
      if (ele['selectedAnswerIndex'] == ele['answerIndex']) {
        totalScore += 5;
      } else {
        totalScore -= 2;
      }
    }
  }

  static List a = [];
  static List p = [];
  static bool b = true;

  static void insert(int i) {
    a.add(i);
  }

  static void check() {
    p = a.toSet().toList();
    if (p.length != 10) {
      b = false;
    } else {
      b = true;
    }
  }
}

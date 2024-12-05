import 'package:second_app/row_data.dart';

class ColorChange {
  static int? oldIndex, newIndex;
  static bool flag = true;

  static void selectColor(int index) {
    if (flag == true) {
      oldIndex = index;
      flag = false;
    } else {
      newIndex = index;
      Map<String, dynamic> tempData = griddata[oldIndex!];
      griddata[oldIndex!] = griddata[newIndex!];
      griddata[newIndex!] = tempData;
      flag = true;
    }
  }
}

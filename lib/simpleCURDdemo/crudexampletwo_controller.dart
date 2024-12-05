import 'package:flutter/material.dart';

class WhatsAppController {
  static TextEditingController txtImageUrlController = TextEditingController();
  static TextEditingController txtUserNameController = TextEditingController();
  static TextEditingController txtMessageController = TextEditingController();
  static TextEditingController txtTimeController = TextEditingController();
  static bool isUpdate = false;
  static int selectedIndex = 0;
  static List<Map<String, dynamic>> data = [];

  static void addWhatsAppData() {
    data.add({
      'imageUrl': txtImageUrlController.text,
      'contactName': txtUserNameController.text,
      'message': txtMessageController.text,
      'time': txtTimeController.text,
    });
    clearData();
  }

  static void updateWhataApp() {
    data[selectedIndex]['imageUrl'] = txtImageUrlController.text;
    data[selectedIndex]['contactName'] = txtUserNameController.text;
    data[selectedIndex]['message'] = txtMessageController.text;
    data[selectedIndex]['time'] = txtTimeController.text;
    isUpdate = false;
    clearData();
  }

  static void clearData() {
    txtImageUrlController.clear();
    txtMessageController.clear();
    txtTimeController.clear();
    txtUserNameController.clear();
  }

  static void selectSingleValue(int index) {
    isUpdate = true;
    selectedIndex = index;
    txtImageUrlController.text = data[index]['imageUrl'];
    txtUserNameController.text = data[index]['contactName'];
    txtMessageController.text = data[index]['message'];
    txtTimeController.text = data[index]['time'];
  }

  static void removedata(int index) {
    data.removeAt(index);
  }

  static void disposeTextField() {
    txtImageUrlController.dispose();
    txtMessageController.dispose();
    txtTimeController.dispose();
    txtUserNameController.dispose();
  }
}

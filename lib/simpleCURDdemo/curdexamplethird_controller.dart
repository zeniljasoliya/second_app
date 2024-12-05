import 'package:flutter/material.dart';

class TaskController {
  static TextEditingController txtImageUrlController = TextEditingController();
  static TextEditingController txtFirstNameController = TextEditingController();
  static TextEditingController txtMiddleNameController =
      TextEditingController();
  static TextEditingController txtLastNameController = TextEditingController();
  static TextEditingController txtMobileNoController = TextEditingController();
  static TextEditingController txtEmailIdController = TextEditingController();
  static String? grpvalu = 'Gender', male = 'Male', female = 'Female';
  static double agevalue = 0;
  static bool iscricket = false;
  static bool isfootball = false;
  static List streamdata = ['Science', 'Commerce', 'Arts', 'Diploma'];
  static String? selectedstream;
  static bool isActive = false;
  static bool isUpdate = false;
  static int selectedIndex = 0;
  static List<CurdData> data = [];

  static void disposeTextField() {
    txtImageUrlController.dispose();
    txtFirstNameController.dispose();
    txtMiddleNameController.dispose();
    txtLastNameController.dispose();
    txtMobileNoController.dispose();
    txtEmailIdController.dispose();
  }

  static void adddata() {
    data.add(CurdData(
      imageurl: txtImageUrlController.text,
      fname: txtFirstNameController.text,
      mname: txtMiddleNameController.text,
      lname: txtLastNameController.text,
      mobileno: txtMobileNoController.text,
      emailid: txtEmailIdController.text,
      grpvalue: grpvalu,
      iscricket: iscricket,
      isfooltball: isfootball,
      agevalue: agevalue,
      selectedstream: selectedstream,
      isActive: isActive,
    ));
    clearData();
  }

  static void updatedata() {
    data[selectedIndex].imageurl = txtImageUrlController.text;
    data[selectedIndex].fname = txtFirstNameController.text;
    data[selectedIndex].mname = txtMiddleNameController.text;
    data[selectedIndex].lname = txtLastNameController.text;
    data[selectedIndex].mobileno = txtMobileNoController.text;
    data[selectedIndex].emailid = txtEmailIdController.text;
    data[selectedIndex].grpvalue = grpvalu;
    data[selectedIndex].iscricket = iscricket;
    data[selectedIndex].isfooltball = isfootball;
    data[selectedIndex].agevalue = agevalue;
    data[selectedIndex].selectedstream = selectedstream;
    data[selectedIndex].isActive = isActive;
    isUpdate = false;
    clearData();
  }

  static void selectSingleValue(int index) {
    isUpdate = true;
    selectedIndex = index;
    txtImageUrlController.text = data[index].imageurl!;
    txtFirstNameController.text = data[index].fname!;
    txtMiddleNameController.text = data[index].mname!;
    txtLastNameController.text = data[index].lname!;
    txtMobileNoController.text = data[index].mobileno!;
    txtEmailIdController.text = data[index].emailid!;
    grpvalu = data[index].grpvalue!;
    iscricket = data[index].iscricket!;
    isfootball = data[index].isfooltball!;
    agevalue = data[index].agevalue!;
    selectedstream = data[index].selectedstream!;
    isActive = data[index].isActive!;
  }

  static void clearData() {
    txtImageUrlController.clear();
    txtFirstNameController.clear();
    txtMiddleNameController.clear();
    txtLastNameController.clear();
    txtMobileNoController.clear();
    txtEmailIdController.clear();
    grpvalu = 'Gender';
    agevalue = 0;
    iscricket = false;
    isfootball = false;
    selectedstream = null;
    isActive = false;
  }

  static void removedata(int index) {
    data.removeAt(index);
  }
}

class CurdData {
  String? grpvalue,
      selectedstream,
      imageurl,
      fname,
      mname,
      lname,
      mobileno,
      emailid;
  bool? iscricket, isfooltball, isActive;
  double? agevalue;

  CurdData({
    required this.grpvalue,
    required this.selectedstream,
    required this.iscricket,
    required this.isfooltball,
    required this.isActive,
    required this.agevalue,
    required this.imageurl,
    required this.fname,
    required this.mname,
    required this.lname,
    required this.mobileno,
    required this.emailid,
  });

  factory CurdData.formJson(Map<String, dynamic> json) => CurdData(
        grpvalue: json['grpvalue'],
        selectedstream: json['selectedstream'],
        iscricket: json['iscricket'],
        isActive: json['isActive'],
        isfooltball: json['isfootball'],
        agevalue: json['agevalue'],
        imageurl: json['imageurl'],
        fname: json['fname'],
        mname: json['mname'],
        lname: json['lname'],
        mobileno: json['mobileno'],
        emailid: json['emailid'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (grpvalue != null) data['grpvalue'] = grpvalue;
    if (isActive != null) data['isActive'] = isActive;
    if (selectedstream != null) data['selectedstream'] = selectedstream;
    if (iscricket != null) data['iscricket'] = iscricket;
    if (isfooltball != null) data['isfooltball'] = isfooltball;
    if (agevalue != null) data['agevalue'] = agevalue;
    if (imageurl != null) data['imageurl'] = imageurl;
    if (fname != null) data['fname'] = fname;
    if (mname != null) data['mname'] = mname;
    if (lname != null) data['lname'] = lname;
    if (mobileno != null) data['mobileno'] = mobileno;
    if (emailid != null) data['emailid'] = emailid;
    return data;
  }
}

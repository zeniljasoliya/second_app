class TaskTwoController {
  static List selectedHobbies = [];

  static insert(bool a, String p) {
    if (a == true) {
      selectedHobbies.add(p);
    } else {
      selectedHobbies.remove(p);
    }
  }
}

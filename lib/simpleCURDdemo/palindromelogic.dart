class PalindromeLogic {
  static String? msg;
  static logic(int number) {
    int r = 0;
    int count = 0;
    int temp = number;
    while (temp > 0) {
      r = temp % 10;
      count = (count * 10) + r;
      temp = temp ~/ 10;

      if (number == count) {
        msg = 'This is number is palindrome';
      } else {
        msg = 'This is number is not palindrome';
      }
    }
  }
}

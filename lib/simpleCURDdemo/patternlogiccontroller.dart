class Patterndata {
  static List data = [
    (int n) => pattern1(n),
    (int n) => pattern2(n),
    (int n) => pattern3(n),
    (int n) => pattern4(n),
    // (int n) => pattern5(n),
    // (int n) => pattern6(n),
    // (int n) => pattern7(n),
    // (int n) => pattern8(n),
    // (int n) => pattern9(n),
    // (int n) => pattern10(n),
    // (int n) => pattern11(n),
  ];

  static String? z;
  static String pattern1(int n) {
    String a = '';
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= i; j++) {
        a += j.toString();
      }
      a += '\n';
    }
    return a;
  }

  static String pattern2(int n) {
    String a = '';
    for (int i = n; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        a += j.toString();
      }
      a += '\n';
    }
    return a;
  }

  static String pattern3(int n) {
    String a = '';
    for (int i = n; i >= 1; i--) {
      for (int j = n; j >= i; j--) {
        a += j.toString();
      }
      a += '\n';
    }
    return a;
  }

  static String pattern4(int n) {
    String a = '';
    for (int i = n; i >= 1; i--) {
      for (int j = n; j >= i; j--) {
        a += j.toString();
      }
      a += '\n';
    }
    print(a);
    return a;
  }
}

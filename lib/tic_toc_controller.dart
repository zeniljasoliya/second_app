class TicTocData {
  static List<String> data = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  static bool flag = true;
  static String x = 'X';
  static String o = 'O';
  static int player = 0;
  static int playerX = 0;
  static int playerO = 0;

  static void tapcontainer(int index) {
    if (flag == true) {
      // ignore: unrelated_type_equality_checks
      if (data[index] != x && data[index] != 0) {
        data[index] = x;
        flag = false;
      }
    } else {
      // ignore: unrelated_type_equality_checks
      if (data[index] != x && data[index] != 0) {
        data[index] = o;
        flag = true;
      }
    }
  }

  static void checkcondition() {
//xxxxxx.........................
//Row
    if (data[0] == x && data[1] == x && data[2] == x) {
      player = 1;
      playerX++;
      reset();
      flag = true;
    }
    if (data[3] == x && data[4] == x && data[5] == x) {
      player = 1;
      playerX++;
      reset();
      flag = true;
    }
    if (data[6] == x && data[7] == x && data[8] == x) {
      player = 1;
      playerX++;
      reset();
      flag = true;
    }

    //Column
    if (data[0] == x && data[3] == x && data[6] == x) {
      player = 1;
      playerX++;
      reset();
      flag = true;
    }
    if (data[1] == x && data[4] == x && data[7] == x) {
      player = 1;
      playerX++;
      reset();
      flag = true;
    }
    if (data[2] == x && data[5] == x && data[8] == x) {
      player = 1;
      playerX++;
      reset();
      flag = true;
    }

    //Diagonal
    if (data[0] == x && data[4] == x && data[8] == x) {
      player = 1;
      playerX++;
      reset();
      flag = true;
    }
    if (data[2] == x && data[4] == x && data[6] == x) {
      player = 1;
      playerX++;
      reset();
      flag = true;
    }

    //oooooo.........................
//Row
    if (data[0] == o && data[1] == o && data[2] == o) {
      player = 2;
      playerO++;
      reset();
      flag = true;
    }
    if (data[3] == o && data[4] == o && data[5] == o) {
      player = 2;
      playerO++;
      reset();
      flag = true;
    }
    if (data[6] == o && data[7] == o && data[8] == o) {
      player = 2;
      playerO++;
      reset();
      flag = true;
    }

    //Column
    if (data[0] == o && data[3] == o && data[6] == o) {
      player = 2;
      playerO++;
      reset();
      flag = true;
    }
    if (data[1] == o && data[4] == o && data[7] == o) {
      player = 2;
      playerO++;
      reset();
      flag = true;
    }
    if (data[2] == o && data[5] == o && data[8] == o) {
      player = 2;
      playerO++;
      reset();
      flag = true;
    }

    //Diagonal
    if (data[0] == o && data[4] == o && data[8] == o) {
      player = 2;
      playerO++;
      reset();
      flag = true;
    }
    if (data[2] == o && data[4] == o && data[6] == o) {
      player = 2;
      playerO++;
      reset();
      flag = true;
    }

    // row
    // if ((data[0] == x && data[1] == x && data[2] == x) &&
    //     (data[0] == o && data[1] == o && data[2] == o)) {
    //   player = 1;
    //   player = 2;
    //   playerX++;
    //   playerO++;
    //   reset();
    //   flag = true;
    // }
    // if ((data[3] == x && data[4] == x && data[5] == x) &&
    //     (data[3] == o && data[4] == o && data[5] == o)) {
    //   player = 1;
    //   player = 2;
    //   playerX++;
    //   playerO++;
    //   reset();
    //   flag = true;
    // }
    // if ((data[6] == x && data[7] == x && data[8] == x) &&
    //     (data[6] == o && data[7] == o && data[8] == o)) {
    //   player = 1;
    //   player = 2;
    //   playerX++;
    //   playerO++;
    //   reset();
    //   flag = true;
    // }

    // column
    // if ((data[0] == x && data[3] == x && data[6] == x) &&
    //     (data[0] == o && data[3] == o && data[6] == o)) {
    //   player = 1;
    //   player = 2;
    //   playerX++;
    //   playerO++;
    //   reset();
    //   flag = true;
    // }
    // if ((data[1] == x && data[4] == x && data[7] == x) &&
    //     (data[1] == o && data[4] == o && data[7] == o)) {
    //   player = 1;
    //   player = 2;
    //   playerX++;
    //   playerO++;
    //   reset();
    //   flag = true;
    // }
    // if ((data[2] == x && data[5] == x && data[8] == x) &&
    //     (data[2] == o && data[5] == o && data[8] == o)) {
    //   player = 1;
    //   player = 2;
    //   playerX++;
    //   playerO++;
    //   reset();
    //   flag = true;
    // }

    // cross
    // if ((data[0] == x && data[4] == x && data[8] == x) &&
    //     (data[0] == o && data[4] == o && data[8] == o)) {
    //   player = 1;
    //   player = 2;
    //   playerX++;
    //   playerO++;
    //   reset();
    //   flag = true;
    // }
    // if ((data[2] == x && data[4] == x && data[6] == x) &&
    //     (data[2] == o && data[4] == o && data[6] == o)) {
    //   player = 1;
    //   player = 2;
    //   playerX++;
    //   playerO++;
    //   reset();
    //   flag = true;
    // }
  }

  static void reset() {
    data = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
  }

  static restart() {
    reset();
    playerX = 0;
    playerO = 0;
  }
}

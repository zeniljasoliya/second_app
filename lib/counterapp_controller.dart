class Counter {
  static int count = 0;
  static int counttwo = 0;
  static get increment => count++;

  // static int countdec = 0;
  static get decrement => count--;

  static get incrementtwo => counttwo += 2;
  static get deccrementtwo => counttwo -= 2;
}

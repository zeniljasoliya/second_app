class RtoMcq {
  String? question, options, answerIndex, groupvalue, selectedAnswerIndex;
  RtoMcq({
    this.question,
    this.options,
    this.answerIndex,
    this.groupvalue,
    this.selectedAnswerIndex,
  });

  factory RtoMcq.fromJson(Map<String, dynamic> json) => RtoMcq(
      question: json['question'],
      options: json['options'],
      answerIndex: json['answerIndex'],
      groupvalue: json['groupvalue'],
      selectedAnswerIndex: json['selectedAnswerIndex']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (question != null) {
      data['question'] = question;
    }
    if (options != null) {
      data['options'] = options;
    }
    if (answerIndex != null) {
      data['answerIndex'] = answerIndex;
    }
    if (groupvalue != null) {
      data['groupvalue'] = groupvalue;
    }
    if (selectedAnswerIndex != null) {
      data['selectedAnswerIndex'] = selectedAnswerIndex;
    }

    return data;
  }
}

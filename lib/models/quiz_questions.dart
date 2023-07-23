class QuizQuestions {
  final String text;
  final List<String> answers;

  //constructor
  const QuizQuestions(this.text, this.answers);

  //function to shuffle questions
  //get is used instead of function name->>>change the function to varibale but work as a function
  List<String> get ShuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

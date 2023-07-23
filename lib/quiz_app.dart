import 'package:advance_basic/data/questions.dart';
import 'package:advance_basic/question_screen.dart';
import 'package:advance_basic/result-screen.dart';
import 'package:flutter/material.dart';
import 'package:advance_basic/start_secreen.dart';

/*quiz App is determine which screen is displayed...
so that we will manange the Answers screen in that as well*/
class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  //Widget is more specific so use it instead of VAR
  //Widget? activeScreen; //make this clear that it can be null

  //other meethod
  var activeScreen = 'start-screen';
  bool answerchosefull = false;
  List<String> selectedAnswer = []; //futher add on selted questions in question

  //init function to run fast
  /*@override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchState);
  }*/

  //function
  void switchState() {
    setState(() {
      //activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  void restartState() {
    setState(() {
      //activeScreen = const QuestionsScreen();
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswers(String Answers) {
    selectedAnswer.add(Answers);

    //conditions for terminate questions
    if (selectedAnswer.length == questions.length) {
      //result screen--->dont have yet
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenState = StartScreen(switchState);

    if (activeScreen == 'questions-screen') {
      screenState = QuestionsScreen(
        onSeleted: chooseAnswers,
      );
    }
    if (activeScreen == 'result-screen') {
      screenState = ResultScreen(
        chosenAnswer: selectedAnswer,
        restartcall: restartState,
      );
    }
    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        //conatiner wigdet are then allow us to decorate and gradient
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurpleAccent,
                Colors.cyan,
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenState,
          //ternary expreesion
          /*activeScreen == 'start-screen'
                  ? StartScreen(
                      switchState,
                    )
                  : const QuestionsScreen(),*/
        ),
      ),
    );
  }
}

import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:advance_basic/answer_button.dart';
import 'package:advance_basic/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    Key? key,
    required this.onSeleted,
  }) : super(
          key: key,
        );
  //function
  final void Function(String answers) onSeleted;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

//----->we will need the FUnction in final class

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentquestion = 0;
  void changeQuestion(String answer) {
    widget.onSeleted(answer);
    setState(() {
      currentquestion++;
    });
  }

  Widget build(context) {
    final currentQuestion = questions[currentquestion];
    return Center(
      child: Container(
        //margin
        margin: const EdgeInsets.all(
          24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //spread the button
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //text
            Text(
              currentQuestion.text,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            //sizeset
            const SizedBox(
              height: 20,
            ),

            // use map and spread concept in the answerbutton
            ...currentQuestion.ShuffledAnswers.map(
              (answers) {
                return AnswerButton(
                  answertext: answers,
                  ontap: () {
                    changeQuestion(answers);
                  },
                );
              },
            ),

            //buttons1
            //named argument
            /*AnswerButton(
              ontap: () {},
              answertext: currentQuestion.answers[0],
            ),
      
            AnswerButton(
              ontap: () {},
              answertext: currentQuestion.answers[1],
            ),
      
            AnswerButton(
              ontap: () {},
              answertext: currentQuestion.answers[2],
            ),
      
            AnswerButton(
              ontap: () {},
              answertext: currentQuestion.answers[3],
            )*/
          ],
        ),
      ),
    );
  }
}

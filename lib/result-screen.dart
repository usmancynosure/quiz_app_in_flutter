import 'package:advance_basic/data/questions.dart';
import 'package:advance_basic/start_secreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:advance_basic/question_summary/Questions_summary.dart';
import 'package:advance_basic/question_screen.dart';
import 'package:advance_basic/quiz_app.dart';

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnswer;
  final void Function() restartcall;
  //constructor
  const ResultScreen(
      {super.key, required this.chosenAnswer, required this.restartcall});

  List<Map<String, Object>> getsummarydata() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'questions': questions[i].text,
          'correct_question': questions[i].answers[0],
          'user_choice': chosenAnswer[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = getsummarydata();

    final nooftotalquestions = questions.length;
    final noofcorrectanswer = summarydata.where(
      (data) {
        return data['correct_question'] == data['user_choice'];
      },
    ).length;
    // TODO: implement build
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Answer $noofcorrectanswer out of $nooftotalquestions Question Correctly ",
              style: GoogleFonts.roboto(
                color: const Color.fromARGB(255, 226, 218, 218),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            //set
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(
              summaryData: summarydata,
            ),

            const SizedBox(
              height: 30,
            ),

            ElevatedButton.icon(
                onPressed: restartcall,
                //annonumys function
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(180, 33, 97, 82),
                  foregroundColor: const Color.fromARGB(255, 226, 218, 218),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(24),
                    ),
                  ),
                ),
                icon: const Icon(Icons.restart_alt_rounded),
                //to use icon constructor change child to label
                label: const Text("restart")),
          ],
        ),
      ),
    );
  }
}

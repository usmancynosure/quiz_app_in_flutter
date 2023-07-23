import 'package:flutter/material.dart';
import 'package:advance_basic/question_summary/summary_identifier.dart';
import 'package:advance_basic/result-screen.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionItem extends StatelessWidget {
  final Map<String, Object> itemdata;
  //constructor
  const QuestionItem(this.itemdata, {super.key});
  @override
  Widget build(BuildContext context) {
    final iscorrectanswer =
        itemdata['correct_question'] == itemdata['user_choice'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SummaryIdentifier(
          iscorrectanswer: iscorrectanswer,
          questionindex: itemdata['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemdata['questions'] as String,
                style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 226, 218, 218),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemdata['correct_question'] as String,
                style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 156, 193, 8),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemdata['user_choice'] as String,
                style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 132, 63, 10),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:advance_basic/question_summary/summary_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  //constructor
  const QuestionSummary({Key? key, required this.summaryData})
      : super(key: key);

  Widget build(context) {
    // Color questionColor = areAllQuestionsCorrect()
    //     ? Colors.green
    //     : Color.fromARGB(255, 39, 12, 10);

    return SizedBox(
      height: 440,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: summaryData.map(
            (data) {
              return QuestionItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}

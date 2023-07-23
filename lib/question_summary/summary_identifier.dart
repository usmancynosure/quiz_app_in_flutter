import 'package:flutter/material.dart';

class SummaryIdentifier extends StatelessWidget {
  final iscorrectanswer;
  final questionindex;
  //constructor
  const SummaryIdentifier({
    Key? key,
    required this.iscorrectanswer,
    required this.questionindex,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final questionNumber = questionindex + 1;
    return Container(
      margin: const EdgeInsets.all(10),
      width: 28,
      height: 29,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: iscorrectanswer ? Colors.green : Colors.red,
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answertext;
  final void Function() ontap;
  //constructor
  const AnswerButton({
    Key? key,
    required this.answertext,
    required this.ontap,
  }) : super(key: key);
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 1,
        ),
        foregroundColor: const Color.fromARGB(231, 239, 239, 240),
        backgroundColor: const Color.fromARGB(156, 6, 58, 58),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),
      child: Text(
        answertext,
        textAlign: TextAlign.center,
      ),
    );
  }
}

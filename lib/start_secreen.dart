import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  //constructor
  const StartScreen(this.startQuiz, {super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //first image is palace in coloum

          Image.asset(
            "assests/images/quiz-logo.png",
            width: 220,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),

          /*opacicty widget for dim bright
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              "assests/images/quiz-logo.png",
              width: 220,
            ),
          ),*/
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Learn Flutter and go forward",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          //padding
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
          ),
          ElevatedButton.icon(
              onPressed: startQuiz,
              //annonumys function
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              icon: const Icon(Icons.arrow_forward_rounded),
              //to use icon constructor change child to label
              label: const Text("Start Quiz")),
        ],
      ),
    );
  }
}

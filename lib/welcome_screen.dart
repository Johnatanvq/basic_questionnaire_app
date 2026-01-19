import 'package:flutter/material.dart';
import 'package:adv_basics/label_text.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen (this.startQuiz, {super.key});

  final image = 'assets/images/quiz-logo.png';
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(
            height: 40,
          ),
          LabelText(
            label: 'Learn Flutter the fun way!',
            fontSize: 20,
            fontColor: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 60,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                width: 2, 
                color: Color.fromARGB(255, 167, 167, 167)),
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              backgroundColor: Color.fromARGB(255, 149, 0, 255),
              padding: EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 20,
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 40,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2,
              )
            ),
          ),
        ],
      ),
    );
  }
}
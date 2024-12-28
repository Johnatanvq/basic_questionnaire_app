import 'package:adv_basics/custom_button.dart';
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
            height: 20,
          ),
          LabelText(
            label: 'Hola Johnatan!',
            fontSize: 20,
            fontColor: Colors.cyan,
            fontWeight: FontWeight.w500,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                width: 5, 
                color: Color.fromARGB(255, 225, 0, 255)),
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
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
              'EMPEZAR',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2,
                shadows: [
                  Shadow(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(6, 2),
                    blurRadius: 4,
                  ),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
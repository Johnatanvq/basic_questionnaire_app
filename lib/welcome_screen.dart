import 'package:adv_basics/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/label_text.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen ({super.key});

  final image = 'assets/images/quiz-logo.png';

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
          CustomButton(text:'EMPEZAR'),
        ],
      ),
    );
  }
}
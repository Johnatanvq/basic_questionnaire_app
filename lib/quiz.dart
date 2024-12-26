import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';

import 'package:adv_basics/welcome_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State <Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = WelcomeScreen(switchScreen);
    super.initState();
  }

//setState es un método flutter que corre el build method tantas veces 
// identifique si hay alguna diferencia entre la última construcción del ui y del nuevo, y si la hay
// actualiza automáticamente el build

//CONTENT CONDITIONALLY
  void switchScreen () {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 149, 0, 255),
                Color.fromARGB(255, 90, 0, 90),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
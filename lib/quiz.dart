import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';

import 'package:adv_basics/welcome_screen.dart';
import 'package:adv_basics/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State <Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  var activeScreen = 'start-screen';
  final List <String> selectedAnswers = [];

  void switchScreen () {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer (String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context){
    Widget screenWidget = WelcomeScreen(switchScreen);

    if (activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer
      );
    }

    if (activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
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
          child: WelcomeScreen(),
        ),
      ),
    );
  }
}
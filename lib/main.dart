import 'package:adv_basics/welcome_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
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
    ),
  );
}
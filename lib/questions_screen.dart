import 'package:flutter/material.dart';

import 'package:adv_basics/custom_button.dart';
import 'package:adv_basics/label_text.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State <QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  @override
  Widget build(context){
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LabelText(
            label: currentQuestion.text,
            fontSize: 25,
            fontColor: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: currentQuestion.answers[0],
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: currentQuestion.answers[1],
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: currentQuestion.answers[2],
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: currentQuestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
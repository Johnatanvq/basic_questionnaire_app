import 'package:adv_basics/custom_button.dart';
import 'package:adv_basics/label_text.dart';
import 'package:flutter/material.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Text(
          //   'the question'
          // ),
          LabelText(
            label: 'the question',
            fontSize: 25,
            fontColor: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'answer 1',
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'answer 2',
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'answer 3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
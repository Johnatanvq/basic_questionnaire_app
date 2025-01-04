import 'package:adv_basics/main.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:adv_basics/quiz.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers; 

  @override
  State <ResultsScreen> createState() {
    return _ResultsScreenState();
  }
}

class _ResultsScreenState extends State<ResultsScreen> {

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < widget.chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': widget.chosenAnswers[i]
        },
      );
    }
    return summary;
  }
  
  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numTotalQuestions out of $numCorrectQuestions questions correctly!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 204, 114, 218),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            QuestionsSummary(
              getSummaryData(),
            ),
            SizedBox(
              height: 70,
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quiz()),
                );
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 0, 
                  color: Color.fromARGB(0, 139, 131, 131)),
              ),
              icon: const Icon(
                Icons.restart_alt_rounded,
                size: 40,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: Text(
                'Restart quiz',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
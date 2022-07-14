import 'package:flutter/material.dart';
import 'package:quizapp02_1/question1.dart';
import 'package:quizapp02_1/quiz1.dart';
import 'question1.dart';
import 'answer1.dart';
import 'result1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  int num0 = 0, num1 = 0, num2 = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    if (_questionIndex == 0) {
      num0 = score;
    } else if (_questionIndex == 1) {
      num1 = score;
    } else if (_questionIndex == 2) {
      num2 = score;
    }

    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    /*print(_questionIndex);
    print("answer choosen !");
    print(_totalScore);*/
    print("qu index=$_questionIndex");
    print("num=$num");
    print("total score=$_totalScore");
    print("num0=$num0");
    print("num1=$num1");
    print("num2=$num2");
  }

  final List<Map<String, Object>> question = [
    {
      'questionText': 'what\s ur fav color?',
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'green', 'score': 20},
        {'text': 'blue', 'score': 30},
        {'text': 'yellow', 'score': 40}
      ]
    },
    {
      'questionText': 'what\s ur fav animal?',
      'answer': [
        {'text': 'rabbit', 'score': 10},
        {'text': 'tiger', 'score': 20},
        {'text': 'elephant', 'score': 30},
        {'text': 'lion', 'score': 40}
      ]
    },
    {
      'questionText': 'what\s ur fav ins?',
      'answer': [
        {'text': 'kmg1', 'score': 10},
        {'text': 'kmg2', 'score': 20},
        {'text': 'kmg3', 'score': 30},
        {'text': 'kmg4', 'score': 40}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < question.length
            ? Quiz1(question, _questionIndex, answerQuestion)
            : Result1(_resetQuiz, _totalScore),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            if (_questionIndex == 1) _totalScore -= num0;
            if (_questionIndex == 2) _totalScore -= num1;
            if (_questionIndex == 3) _totalScore -= num2;
            setState(() {
              if (_questionIndex > 0) {
                _questionIndex--;
              }
            });
            print("qu index=$_questionIndex");
            print("num0=$num0");
            print("num1=$num1");
            print("num2=$num2");
            print("total score=$_totalScore");
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'quiz_score.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'question': 'What is your favorite programming language?',
      'answers': [
        {
          'answer': 'C++',
          'score': 9,
        },
        {
          'answer': 'Java',
          'score': 7,
        },
        {
          'answer': 'Python',
          'score': 2,
        },
      ],
    },
    {
      'question': 'What is your favorite animal?',
      'answers': [
        {
          'answer': 'Cat',
          'score': 3,
        },
        {
          'answer': 'Dog',
          'score': 1,
        },
        {
          'answer': 'Snake',
          'score': 8,
        },
      ],
    },
    {
      'question': 'What is your favorite color?',
      'answers': [
        {
          'answer': 'black',
          'score': 8,
        },
        {
          'answer': 'white',
          'score': 1,
        },
        {
          'answer': 'pink',
          'score': 3,
        },
      ],
    },
  ];
  var _questionIndex = 0;
  int _score = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });

    _score += score;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  String get personalityText {
    if (_score < 8) {
      return 'You are cool!';
    } else if (_score < 16) {
      return 'You are... strange';
    }
    return 'You are weird!';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personality Checker',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
          appBar: AppBar(title: const Text('Personality Checker')),
          body: Center(
            widthFactor: double.infinity,
            child: Container(
              margin: const EdgeInsets.only(top: 26),
              child: _questionIndex < _questions.length
                  ? Question(_questions, _questionIndex, _answerQuestion)
                  : QuizScore(personalityText, _resetQuiz),
            ),
          )),
    );
  }
}

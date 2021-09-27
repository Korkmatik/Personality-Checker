import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final _questions;
  var _questionIndex = 0;
  final Function _answerQuestion;

  Question(this._questions, this._questionIndex, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_questions[_questionIndex]['question'].toString()),
        ...((_questions[_questionIndex]['answers'] as List).map(
                (e) => ElevatedButton(
                onPressed: () =>
                    _answerQuestion((e['score'] as int)),
                child: Text(e['answer'].toString())))),
      ],
    );
  }
}

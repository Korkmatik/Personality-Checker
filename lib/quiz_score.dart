import 'package:flutter/material.dart';

class QuizScore extends StatelessWidget {
  final _displayText;
  final VoidCallback _resetQuiz;

  QuizScore(this._displayText, this._resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(_displayText),
            OutlinedButton(onPressed: _resetQuiz, child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app_2022/question.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int _questionIndex;
  final VoidCallback _answerQuestion;
  Quiz(this.questions,this._questionIndex,this._answerQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[_questionIndex]['questionText'].toString()),
        ...(questions[_questionIndex]['answers']as List<String>).map((answer){
          return Answers(_answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectAnswer;
  final String answerText;

  const Answers(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(onPressed: selectAnswer,child: Text(answerText),),
    );
  }
}


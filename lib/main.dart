import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_2022/answers.dart';
import 'package:quiz_app_2022/question.dart';
import 'package:quiz_app_2022/quiz.dart';

void main() => runApp(MyApp()); //function with one expression//dart syntax//

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0; //for array index

//answerQuestion method for changing state
  void _answerQuestion() {
    setState(() {
      _questionIndex =
          _questionIndex + 1; //For when click button array index changing
    });
  }
  void _restart() {
    setState(() {
      _questionIndex =0; //For when click button array index changing
    });
  }

  @override
  Widget build(BuildContext context) {
    //array for collection of question
    const questions = [
      {
        'questionText': 'what\'s your favorite color?',
        'answers': ['red', 'yellow', 'green', 'white'],
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answers': ['dog', 'cat', 'cow', 'lion'],
      },
      {
        'questionText': 'what\'s your favorite cricketer?',
        'answers': ['sakib', 'tamim', 'mashrafee', 'riad'],
      },
      {
        'questionText': 'what\'s your favorite footballer?',
        'answers': ['messi', 'nymer', 'ronaldo', 'kaka'],
      },
    ];
    //BuildContext = type/class provide by material
    //build function return by widget class
    //clt+alt+l for Reformat Code
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Quiz App'),
            centerTitle: true,
          ),
         body: _questionIndex < questions.length
              ? Quiz(questions, _questionIndex, _answerQuestion)
              : Column(
                children: [
                  Text('Completed', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  TextButton(onPressed:  _restart, child: Text('Restart')),
                ],
              ),
      ),
    );
  }
}

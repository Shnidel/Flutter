import 'package:flutter/material.dart';
import 'package:second_flutter/quiz.dart';
import 'package:second_flutter/result.dart';

void main(List<String> args) {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // DO: implement create state
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  num _questionIndex = 0;
  num _totalScore = 0;

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 12},
        {'text': 'White', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 7},
        {'text': 'Parrot', 'score': 3},
        {'text': 'Donkey', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Annie a secas', 'score': 2},
        {'text': 'Annie la puti', 'score': 6},
        {'text': 'Annie la gorda', 'score': 3},
        {'text': 'Annie la rica', 'score': 10}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

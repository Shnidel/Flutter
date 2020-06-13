/* Package imports */
import 'package:flutter/material.dart';

/* Own widgets imports*/
import 'package:flutter_assignment/src/widgets/quiz.dart';
import 'package:flutter_assignment/src/widgets/result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = <Map<String, Object>>[
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Rafa', 'score': 1},
        {'text': 'Annie', 'score': 2},
        {'text': 'Leo', 'score': 3},
        {'text': 'Yeny', 'score': 4}
      ]
    }
  ];

  var _questionIndex = 0;

  num _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });

    print('Chossen index: ${this._questionIndex}');
  }

  void _restartQuiz() {
    _totalScore = 0;

    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}

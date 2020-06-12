/* Package imports */
import 'package:flutter/material.dart';

/* Own widgets imports*/
import 'package:flutter_assignment/src/widgets/question.dart';
import 'package:flutter_assignment/src/widgets/answer.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print('Chossen index: ${this._questionIndex}');
  }

  @override
  Widget build(BuildContext context) {
    var questions = <Map<String, Object>>[
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Rafa', 'Annie', 'Leo', 'Yeny']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(this._answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

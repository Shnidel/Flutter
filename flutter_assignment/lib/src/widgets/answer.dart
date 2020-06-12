import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          disabledColor: Colors.blueGrey,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}

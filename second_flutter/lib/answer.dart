import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandler;
  final String answerText;

  Answer(this.selecthandler, this.answerText );  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        // color: Colors.blue,
        color: Color.fromRGBO(52, 152, 219, 1),
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selecthandler,
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _textToShow = 'La puti va .......';

  void _seeAnswer() {
    setState(() {
      _textToShow = 'a hacerme merenguitos quemados mañana, yea !!!!!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assigment App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                _textToShow,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                  color: Colors.blue[300],
                  child: Text('What what, continue...'),
                  onPressed: _seeAnswer)
            ],
          ),
        ),
      ),
    );
  }
}

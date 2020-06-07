import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class OrangeBtn extends StatelessWidget{
  final String text;

  OrangeBtn({@required this.text});
  
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text('${this.text}', style: TextStyle(
        color: Colors.white
      ),),
    );
  }
}
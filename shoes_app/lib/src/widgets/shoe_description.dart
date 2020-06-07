import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  final String title;
  final String description;

  ShoeDescription({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${this.title}', style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w700
          ),),
          SizedBox(height: 20,),
          Text('${this.description}', style: TextStyle(
            color: Colors.black54,
            height: 1.6
          ),)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class CustomAppBar extends StatelessWidget {
  final String text;

  CustomAppBar({@required this.text});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(this.text,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
              Spacer(),
              Icon(
                Icons.search,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

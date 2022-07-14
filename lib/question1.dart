import 'package:flutter/material.dart';

class Question1 extends StatelessWidget {
  final String questionText;

  Question1(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'main.dart';

class Answer1 extends StatelessWidget {
  final String answerText;
  final Function x;

  const Answer1(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: TextStyle(fontSize: 30),
        ),
        onPressed: () {
          x();
        },
      ),
    );
  }
}

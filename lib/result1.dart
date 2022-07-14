import 'package:flutter/material.dart';
import 'main.dart';

class Result1 extends StatelessWidget {
  final Function q;
  final int resultSCore;
  const Result1(this.q, this.resultSCore);

  String get resultPhrase {
    String resultText;
    if (resultSCore >= 70) {
      resultText = "awesome";
    } else if (resultSCore >= 40) {
      resultText = "likable";
    } else {
      resultText = "bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "ur score $resultSCore",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "$resultPhrase",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text(
              "Restart the App",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            onPressed: () {
              q();
            },
          ),
        ],
      ),
    );
  }
}

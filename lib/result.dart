import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  // getter: no need parenthesis bcoz getter never receive argument
  // use it like normal property, not a function
  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = "Yout are awesome and innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable";
    } else if (resultScore <= 16) {
      resultText = "You are ... unique~";
    } else {
      resultText = "You are just you";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart quiz'),
            textColor: Colors.blue,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}

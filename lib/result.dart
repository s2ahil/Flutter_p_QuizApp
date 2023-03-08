import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  late final int resultScore;
final VoidCallback resetHandler;
  Result(this.resultScore,this.resetHandler);

  String? get resultPhrase {
    String resultText = 'you did it yay';
    if (resultScore <= 8) {
      resultText = 'you are awesome';
    } else if (resultScore <= 12) {
      resultText = 'you are fine as hell pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'you are strange';
    } else {
      resultText = 'you are the villian thanos';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[

          Text(
            resultPhrase!,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
    onPressed: resetHandler,
    child:Text('Restart quiz',style: TextStyle(fontSize: 30),)
          )
        ],
      ),
    );
  }
}

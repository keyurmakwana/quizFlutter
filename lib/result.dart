import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score;
  Function reset;

  Result(this.score, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('You did it your score is ' + score.toString()),
          FlatButton(onPressed: reset, child: Text('Rest Quiz')),
        ],
      ),
    );
  }
}

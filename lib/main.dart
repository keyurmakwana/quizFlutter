import 'package:flutter/material.dart';
import 'package:quiz2/result.dart';
import 'quiz.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  int totalScore = 0;

  void _reset() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answer(int score) {
    totalScore = totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(totalScore);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 11},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 9},
        ],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Min', 'score': 1},
          {'text': 'Mid', 'score': 1},
          {'text': 'Null', 'score': 1},
        ],
      },
    ];

    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: questionIndex < _questions.length
              ? Quiz(answer, _questions, questionIndex)
              : Result(totalScore,_reset),
        ));
  }
}

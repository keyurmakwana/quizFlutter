import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';


class Quiz extends StatelessWidget {
  List<Map<String,Object>> questions;
  Function answer;
  var questionIndex;
  Quiz(this.answer,this.questions,this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer1) {
          return Answer(() => answer(answer1['score']), answer1['text']);
        }).toList(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(questionText,
        style: const TextStyle(
          fontSize: 40,
          color: Color(0xFF198B1C),
        ));
  }
}

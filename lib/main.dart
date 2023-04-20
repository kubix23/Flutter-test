import 'package:flutter/material.dart';
import 'package:new_app/answer.dart';

import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _func1() {
    setState(() {
      _questionIndex++;
      _questionIndex %= 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Co to jest?',
        'answers': [
          'Black',
          'Green',
          'Red',
        ],
      },
      {
        'questionText': 'Jak  duże to jest?',
        'answers': [
          '30',
          '40',
          '50',
        ],
      },
      {
        'questionText': 'Test?',
        'answers': [
          'odp1',
          'odp2',
        ],
      },
      {
        'questionText': 'Ile masz lat?',
        'answers': [
          '15',
          '16',
          '17',
          '18',
          '19',
          '20',
          '21',
          '22',
          '23',
          '24',
          '25',
          '26',
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
            backgroundColor: const Color(0x89C71919),
          ),
          body: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Question(
                  questions[_questionIndex]['questionText'] as String,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: (questions[_questionIndex]['answers'] as List<String>)
                  .map((e) {
                return Column(
                  children: [
                    Answer(
                      _func1,
                      text: e,
                      color: Color(e.hashCode),
                    ),
                  ],
                );
              }).toList(),
            )
          ])),
    );
  }
}

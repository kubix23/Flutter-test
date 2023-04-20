import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() _selectF;
  final String text;
  final Color color;

  const Answer(this._selectF,
      {this.text = 'null', Key? key, this.color = Colors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _selectF,
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => color),
      ),
      child: Text(text),
    );
  }
}

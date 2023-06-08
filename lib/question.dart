import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionBody;

  const Question(this._questionBody, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        child: Text(
          _questionBody,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20, color: Colors.blueAccent),
        ));
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerBody;
  final VoidCallback answerClick;

  const Answer(this.answerClick, this._answerBody, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: answerClick, child: Text(_answerBody));
  }
}

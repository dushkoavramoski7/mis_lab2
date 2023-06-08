import 'package:flutter/material.dart';
import 'package:mis_lab2/answer.dart';
import 'package:mis_lab2/question.dart';

class QuestionType {
  String questionBody;
  List<String> answersBody;

  QuestionType({required this.questionBody, required this.answersBody});
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // state
  List<QuestionType> questions = [
    QuestionType(
        questionBody: 'What t-shirt would you like to wear?',
        answersBody: ['Nike M - Men ', 'Adidas S Sleeveless - Men', 'Gucci S']),
    QuestionType(
        questionBody: 'What jeans would you like to wear?',
        answersBody: ['Levi\'s size 52', 'Calvin Klein size 12'])
  ];
  int question = 0;

  // functions
  void buttonClick() {
    setState(() {
      question += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Dushko - 191143",
        home: Scaffold(
          appBar: AppBar(title: const Text('Dushko - 191143')),
          body: Column(
            children: [
              if (question < questions.length) ...[
                Question(questions.elementAt(question).questionBody),
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 30),
                    child: Column(
                      verticalDirection: VerticalDirection.down,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...(questions
                            .elementAt(question)
                            .answersBody
                            .map((e) => Answer(buttonClick, e)))
                      ],
                    ))
              ] else if (question >= questions.length) ...[
                Question('Thanks for answering!'),
              ]
            ],
          ),
        ));
  }
}

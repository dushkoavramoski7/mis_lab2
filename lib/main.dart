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
        questionBody: 'Some question 1', answersBody: ['Answer 1', 'Answer 2']),
    QuestionType(
        questionBody: 'Some question 2', answersBody: ['Answer 3', 'Answer 4'])
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
        title: "Hello World",
        home: Scaffold(
          appBar: AppBar(title: const Text('Hello World')),
          body: Column(
            children: [
              Question(questions
                  .elementAt(question)
                  .questionBody),
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
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quizz App"),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  Body({
    super.key,
  });
  @override
  State<StatefulWidget> createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  var _questionesIndex = 0;
  
  get _answerQuestion => null;

  void _AnswerQuestions() {
    setState(() {
      _questionesIndex = _questionesIndex + 1;
    });
  }

  var questions = [
    'favorite color ?',
    "favorite animal ?",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[_questionesIndex],
        ),
        Answer(_answerQuestion),
        Answer(),
        Answer(),
      ],
    );
  }
}

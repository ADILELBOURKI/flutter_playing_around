import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var i = 0;
  final questions = [
    {
      'questionText': 'what\'s your favorite color',
      'answers': ['black', 'red', 'green', 'white'],
    },
    {
      'questionText': 'what\'s your favorite animal',
      'answers': ['fish', 'chicken', 'cat', 'dog'],
    },
    {
      'questionText': 'what\'s your favorite food',
      'answers': ['potatoes', 'fries', 'pizza', 'burger'],
    },
  ];
  void answerQuestion() {
    setState(() {
      i = i + 1;
      print(i);
    });
    if (i < questions.length) {
      print("i have ntohing to do");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my cute app"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[i]['questionText']),
            ...(questions[i]['answers'] as List<String>).map((answer) {
              return new Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

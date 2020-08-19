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

  void answerQuestion() {
    setState(() {
      i = i + 1;
      print(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color',
      'what\'s your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my cute app"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[i]),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}

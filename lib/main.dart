import 'package:flutter/material.dart';

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
            Text(questions[i]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => {print("Answer 2")},
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {print("Answer 3")},
            ),
          ],
        ),
      ),
    );
  }
}

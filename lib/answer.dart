import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHandler,
        child: Text("answer 1"),
      ),
    );
  }
}

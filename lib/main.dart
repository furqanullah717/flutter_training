import 'package:flutter/material.dart';
import 'package:flutter_demo/question.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyApplicationState();
  }
}

class MyApplicationState extends State<MyApplication> {
  int index = 0;

  void incrementQuestion() {
    setState(() {
      if (index == 3) {
        index = 0;
      } else {
        index++;
      }
    });
  }

  void btn1Clicked() {
    print("Btn 1 clicked");
    incrementQuestion();
  }

  void btn2Clicked() {
    print("Btn 2 clicked");
    incrementQuestion();
  }

  void btn3Clicked() {
    print("Btn 3 clicked");
    incrementQuestion();
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "This is your first Question?",
      "What the Hack are you talking about?",
      "Isn't it fun working on this?",
      "What is this shit baby?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions.elementAt(index)),
            RaisedButton(
              child: Text("Lets Do it 1"),
              onPressed: btn1Clicked,
            ),
            RaisedButton(
              child: Text("Lets Do it 2"),
              onPressed: btn2Clicked,
            ),
            RaisedButton(
              child: Text("Lets Do it 3"),
              onPressed: btn3Clicked,
            )
          ],
        ),
      ),
    );
  }
}

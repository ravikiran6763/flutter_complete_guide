import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\'s your favorite color?',
        'answers': ['Red', 'Blue', ' Black', 'White']
      },
      {
        'questionText': 'what\'s you favorite animal?',
        'answers': ['Lion', 'Tiger', ' Rabbit', 'Horse']
      },
      {
        'questionText': 'What\'s your favorite city?',
        'answers': ['Banglore', 'Mumbai', ' Delhi', 'Bidar ']
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('MY FirstAPP'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]['questionText']),
              ...(questions['_questionIndex']['answers'] as  List<String>).map((answer) {
                return Answer(_answerQuestion,  answer);
              }).toList()
            ],
          )),
    );
  }
}

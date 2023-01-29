import 'package:flutter/material.dart';
import 'package:zen_you/sms.dart';
import 'package:flutter/material.dart';
class Questionnare extends StatefulWidget {
  const Questionnare({super.key});

  @override
  _QuestionnareState createState() => _QuestionnareState();
}

class _QuestionnareState extends State<Questionnare> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
          children: <Widget>[
    Container(
    height: 50,
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: ElevatedButton(
    child: const Text('Continue'),
    onPressed: () {
    Navigator.push(context,MaterialPageRoute(builder: (context)=>const SmsScreen(title: '',)));
    },
    )
    ),
    ]),);
  }
}
class QuestionnairePage extends StatelessWidget {
  const QuestionnairePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Column(
            children: [
              for(var question in questions)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(question.text),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}
class Option {
  final String text;
  final bool correct;

  const Option({
    required this.text,
    required this.correct,
  });
}
final questions = [
  Question(text: 'Have you ever feel like you zone out a lot and is not able to live in the moment? ',
      options: [const Option(text: 'Yes', correct: true),
        const Option(text: 'No', correct: true)]

  )
  ];



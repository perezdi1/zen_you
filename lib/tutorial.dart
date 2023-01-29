import 'package:flutter/material.dart';


class TutorialPage extends StatefulWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage>{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
            children: <Widget>[
              const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Welcome to Zen-U!',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),

                    ),
                  )
              ),
              const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('The app is made for you and your well being, the questionnaire in the following page is set to make this your very own experience',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),

                    ),
                  )
              ),
              Container(
                  alignment: Alignment.topCenter,
                  child: const Image(
                    image:
                    AssetImage('assets/Bear.jpg'),
                    width: 500,
                    height: 500,

                  )
              ),
              const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('After that, you get the chance to meet your Zen mascot!!!',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),

                    ),
                  )
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Continue'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>QuestionnairePage()));
                    },
                  )
              )
            ]
        ));

  }

}





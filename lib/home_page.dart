import 'package:flutter/material.dart';
import 'package:quiz_app/joop_widjet.dart';
import 'package:quiz_app/quiz_model.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int index = 0;

class _HomePageState extends State<HomePage> {
  List<QuizModel> names = [
    QuizModel(
      suroo: 'kyrgyzstanda 7 oblast barby?',
      joop: true,
    ),
    QuizModel(
      suroo: 'kyrgyzstanda ocean barby?',
      joop: false,
    ),
    QuizModel(
      suroo: 'kyrgyzstanda too barby?',
      joop: true,
    ),
    QuizModel(
      suroo: 'kyrgyzstanda metro barby?',
      joop: false,
    ),
  ];

  List<Widget> icons = [];
  koshuu(bool user) {
    if (user == true) {
      icons.add(Icon(
        Icons.check,
        color: Colors.green,
        size: 50,
      ));
    } else if (user == false) {
      icons.add(
        Icon(
          Icons.cancel,
          color: Colors.red,
          size: 50,
        ),
      );
    }
    if (index >= names.length - 1) {
      index = 0;
      icons = [];
    } else {
      index++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 62, 62),
      appBar: AppBar(
        title: const Text(
          'Tapshyrma7',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              names[index].suroo!,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
          ),
          JoopWidget(
            text: 'true',
            onTap: () {
              setState(() {});
              koshuu(true);
            },
          ),
          SizedBox(
            height: 30,
          ),
          JoopWidget(
            text: 'false',
            tus: Colors.red,
            onTap: () {
              setState(() {
                koshuu(false);
              });
            },
          ),
          Row(
            children: icons,
          ),
        ],
      ),
    );
  }
}

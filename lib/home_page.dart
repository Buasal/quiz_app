import 'package:flutter/material.dart';
import 'package:quiz_app/joop_widjet.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = 'Salixa';

  List<String> names = ['Fatima', 'Nur', 'Abdinur'];

  List<int> sandar = [1, 2, 3];

  List<Widget> icons = [
    Icon(
      Icons.check,
      color: Colors.green,
      size: 50,
    ),
    Icon(
      Icons.cancel,
      color: Colors.red,
      size: 50,
    ),
  ];

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
              'Kyrgyzstanda 7 oblast barby?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
          ),
          JoopWidget(
            text: 'true',
            onTap: () {
              setState(() {});
              icons.add(
                Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 50,
                ),
              );
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
                icons.removeAt(icons.length - 1);
              });
              Icon(
                Icons.check,
                color: Colors.green,
                size: 50,
              );
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

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: View()));
  }
}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;
  bool selected = false;
  final Random random = Random();


  void changeBackgroundColor() async {
    Color tempColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
    setState(() {
      backgroundColor = tempColor;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Text('Random Background Color'),
        ),
        body: InkWell(
            onTap: () {
              changeBackgroundColor();
            },
            child: Center(
              child: Text('Hey there'),
            )
        )
    );
  }
}
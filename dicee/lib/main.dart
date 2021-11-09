import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: 'Dicee',
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Dicee'),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftNumber = 1;
  int rightNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftNumber = Random().nextInt(6) + 1;
                  rightNumber = Random().nextInt(6) + 1;
                });
                print('left pressed');
              },
              child: Image.asset(
                'images/dice$leftNumber.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightNumber = Random().nextInt(6) + 1;
                  leftNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dice$rightNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

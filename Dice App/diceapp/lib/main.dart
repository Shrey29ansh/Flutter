import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int randomNumber = 1;
  int randomRight = 5;
  void changestate() {
    setState(() {
      randomNumber = Random().nextInt(6) + 1;
      randomRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image(image: AssetImage('images/dice$randomNumber.png')),
              onPressed: () {
                changestate();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$randomRight.png'),
              ),
              onPressed: () {
                changestate();
              },
            ),
          )
        ],
      ),
    );
  }
}

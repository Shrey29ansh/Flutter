import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.teal,
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
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                  'Welcome to the dice game',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Image(
                        image: AssetImage('images/dice$randomNumber.png')),
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
          ],
        ),
      ),
    );
  }
}

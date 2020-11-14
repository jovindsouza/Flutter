import 'package:flutter/cupertino.dart';
import "dart:math";
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage  extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage > {
int left=6;
int right = 4;

void changeDiceFace() {
  setState(() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
  });
}

@override
Widget build(BuildContext context) {
  return Center(
    child: Row(
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
                changeDiceFace();
                print("left_dice_no = $left");
              },
            child: Image.asset('images/dice$left.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              changeDiceFace();
              },
            child: Image.asset('images/dice$right.png'),
          ),
        ),
      ],
    ),
  );
}
}


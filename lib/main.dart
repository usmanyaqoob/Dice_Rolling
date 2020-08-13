import 'package:flutter/material.dart';
import 'dart:math';
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


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice=1;
  int rightDice=1;

  void changeDice()
  {
    leftDice= Random().nextInt(6)+1;
    rightDice= Random().nextInt(6)+1;

  }

  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                  onPressed: (){
                  setState(() {
                    changeDice();
                  });
                    },
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset('images/dice$leftDice.png')
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                  onPressed: (){
                    setState(() {
                      changeDice();
                    });

                  },
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset('images/dice$rightDice.png')
              ),
            ),
          )

        ],
      ),
    );
  }
  }


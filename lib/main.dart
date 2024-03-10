import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: const Dicework(),
      ),
    ),
  );
}

class Dicework extends StatefulWidget {
  const Dicework({super.key});

  @override
  State<Dicework> createState() => _DiceworkState();
}

class _DiceworkState extends State<Dicework> {
  int leftDiceNumber =1;
  int rightDiceNumber=2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    leftDiceNumber=Random().nextInt(6)+1;
                  });

                },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                  onTap: (){
                    setState(() {
                      rightDiceNumber=Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(

        home: Scaffold(
          appBar: AppBar(
            title: Text("Ask Me Anything!"),
            backgroundColor: Colors.blue.shade900,
          ),
          backgroundColor: Colors.blue.shade300,
          body: MagicEight(),
        )
      ),
    );


class MagicEight extends StatefulWidget {
  @override
  _MagicEightState createState() => _MagicEightState();
}

class _MagicEightState extends State<MagicEight> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$ballNum.png'),
        onPressed: (){
          setState(() {
            ballNum = Random().nextInt(5) + 1;
            print('Clicked on image');
          });
        },
      ),

    );
  }
}

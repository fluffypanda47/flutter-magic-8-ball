import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  //const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
    //return Container();
  }
}

class Ball extends StatefulWidget {
  //const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            num = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$num.png'),
      ),
    );
  }
}

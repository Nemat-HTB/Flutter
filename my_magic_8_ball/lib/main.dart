import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('Ask Me Anything'),
        ),
        body: Magic8(),
      ),
    ),
  );
}

class Magic8 extends StatefulWidget {
  const Magic8({Key? key}) : super(key: key);

  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int changeNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            changeNum = Random().nextInt(5) + 1;
          });
        },
        child: Image(
          image: AssetImage('images/ball$changeNum.png'),
        ),
      ),
    );
  }
}

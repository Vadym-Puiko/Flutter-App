import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainWidget();
  }
}

class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  Color mainColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            title: Text('Click anywhere'),
          ),
          body: Stack(
            children: <Widget>[
              Center(
                child: Text('Hey there', style: TextStyle(fontSize: 32.0)),
              ),
              Listener(
                behavior: HitTestBehavior.translucent,
                onPointerDown: (e) {
                  setState(() {
                    mainColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
                  });
                },
              ),
            ],
          ),
        ));
  }
}


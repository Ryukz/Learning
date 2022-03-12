// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

int clicker = 0;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'HOME',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: 'MyFont', fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.deepPurple[600],
      ),
      // ignore: avoid_unnecessary_containers
      body: Row(
        children: [
          Expanded(
            child: Container(
              child: Text('1'),
              color: Colors.amberAccent,
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 60.0, 30.0),
              margin: EdgeInsets.all(10.0),
            ),
          ),
          Expanded(
            child: Container(
              child: Text('2'),
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(30.0),
              margin: EdgeInsets.all(10.0),
            ),
          ),
          Expanded(
            child: Container(
              child: Text('3'),
              color: Colors.orangeAccent,
              padding: EdgeInsets.all(30.0),
              margin: EdgeInsets.all(10.0),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clicker++;
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.alarm),
      ),
    ));
  }
}

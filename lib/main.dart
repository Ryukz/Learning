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
      body: Container(
          color: Colors.redAccent,
          child: Text('Testing Container'),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          margin: EdgeInsets.all(30.0)),
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

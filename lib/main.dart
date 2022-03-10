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
      body: Center(
          child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.mail_outline_rounded,
        ),
        label: Text('Email'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
      )),
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

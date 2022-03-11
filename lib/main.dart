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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/img1.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text('Hello'),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.alarm),
              label: Text('Button'),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.all(10.0),
              child: Text(
                'Hello Boi',
                style: TextStyle(fontSize: 40.0),
              ),
            )
          ],
        ),
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

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

int clicker = 0;
void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(child: Text("Hello $clicker")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clicker++;
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.alarm),
      ),
    )));

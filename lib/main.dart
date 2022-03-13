// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'dart:ui';

import 'package:flutter/material.dart';

int clicker = 0;
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int devLevel = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Profile Details',
              style: TextStyle(
                  fontSize: 18.5, fontFamily: 'MyFont2', letterSpacing: 1.5),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.deepPurple,
              Colors.red,
            ], stops: [
              1.0,
              0.2
            ])),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              // ignore: avoid_print
              setState(() {
                devLevel++;
              });
            },
            backgroundColor: Colors.deepPurple,
            child: Icon(
              Icons.add,
              size: 25,
            )),
        body: Padding(
          padding: EdgeInsets.all(0.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 45.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white12,
                  radius: 70.0,
                  child: Icon(
                    Icons.person,
                    size: 95,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        height: 12.0,
                        color: Colors.white,
                        thickness: 0.8,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 45,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            Text(
                              ' Alex Morgan',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 45,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              ' abc345@gmail.com',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 45,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            Text(
                              ' 1234567890',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 45,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.leaderboard,
                              color: Colors.white,
                            ),
                            Text(
                              ' $devLevel',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    Colors.lightBlue,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.5, 1.0]),
            ),
          ),
        ),
      ),
    );
  }
}

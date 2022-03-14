// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables, avoid_print
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //Example of asysnc code
    await Future.delayed(Duration(seconds: 5), () {
      print('Yo Bitch1!');
    });

    await Future.delayed(Duration(seconds: 3), () {
      print('Yo Bitch 2!');
    });

    print("Not witing for Yo Bitch statemnet!");
  }

  @override
  void initState() {
    print("This is initFunction");
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose a Location'),
        centerTitle: true,
      ),
    );
  }
}

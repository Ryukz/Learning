// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables, avoid_print, unused_import, unused_local_variable
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getTime() async {
    Response response = await get(
        Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Kolkata'));
    Map data = jsonDecode(response.body);
    String dateTime = data['datetime'];
    print(dateTime);
    String offset =
        data['utc_offset'].toString().replaceAll("+", "").split(":")[0];
    String offsetMin = '';
    try {
      offsetMin =
          data['utc_offset'].toString().replaceAll("+", "").split(":")[1];
    } catch (e) {
      print(e);
    }
    print(offset);
    DateTime now = DateTime.parse(dateTime);
    now = now
        .add(Duration(hours: int.parse(offset), minutes: int.parse(offsetMin)));
    print(now);
  }

  @override
  void initState() {
    print("This is initFunction");
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}

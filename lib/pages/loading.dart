// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables, avoid_print
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getData() async {
    //Example of asysnc code and http network request
    Response response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    print(response.body);
    Map jsonResponse = jsonDecode(response.body);
    print(jsonResponse['title']);
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
      body: Text('Loading Screen'),
    );
  }
}

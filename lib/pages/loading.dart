// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}

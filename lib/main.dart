// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/choose_location.dart';
import 'package:flutter_application/pages/home.dart';
import 'package:flutter_application/pages/loading.dart';

int clicker = 0;
void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': ((context) => LoadingScreen()),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation()
      },
    ));

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables, avoid_print, unused_import, unused_local_variable
import 'package:flutter/material.dart';
import 'package:flutter_application/services/world_time.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String time = 'loading';

  void setWorldTimeApp() async {
    WorldTime worldTime = WorldTime(
        location: 'Kolkata', flag: 'india.png', urlEndpoint: '/Asia/Kolkata');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': worldTime.location,
      'flag': worldTime.flag,
      'time': worldTime.time
    });
  }

  @override
  void initState() {
    print("This is initFunction");
    super.initState();
    setWorldTimeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
          padding: EdgeInsets.all(50.0),
          child: SpinKitWanderingCubes(
            color: Colors.white,
            size: 50.0,
            duration: Duration(milliseconds: 1200),
          )),
    );
  }
}

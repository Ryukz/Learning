// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables, avoid_print, unused_local_variable, unused_element, unnecessary_new, await_only_futures, prefer_typing_uninitialized_variables, unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/loading.dart';
import 'package:flutter_application/services/world_time.dart';
import 'package:intl/intl.dart';
import 'package:timezone/standalone.dart' as tz;

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  var updateTime;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    String bgImage = data['isDayTime'] ? 'img3.jpg' : 'img4.jpg';
    //print(data);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/$bgImage'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 180, 25, 25),
          child: Column(
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.location_city_outlined),
                  label: Text('Edit Location')),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                data['time'],
                style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/loading.dart';

import '../services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(urlEndpoint: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(
        urlEndpoint: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(
        urlEndpoint: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(
        urlEndpoint: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(
        urlEndpoint: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(
        urlEndpoint: 'America/New_York', location: 'New York', flag: 'usa.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose a Location'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.popAndPushNamed(context, '/',
                    arguments: {'worldTimeObject': locations[index]});
              },
              title: Text(locations[index].location),
            ),
          );
        },
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables, avoid_print, unused_import, unused_local_variable
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  late String location; //location name for UI
  late String time; //time in that location
  late String flag; // url to an asset
  late String urlEndpoint; // location url for api endPoint

  WorldTime(
      {required this.location, required this.flag, required this.urlEndpoint});

  Future<void> getTime() async {
    Response response = await get(
        Uri.parse('https://worldtimeapi.org/api/timezone/$urlEndpoint'));
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

    time = now.toString();
  }
}



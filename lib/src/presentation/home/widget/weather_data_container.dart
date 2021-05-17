import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weather_app/src/const/text_constatnts.dart';

class WeatherData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DataColumn(
              name: TextConstants.WIND,
              data: '33 m/h',
            ),
            DataColumn(
              name: TextConstants.HUMIDITY,
              data: '23 km',
            ),
            DataColumn(
              name: TextConstants.VISIBILITY,
              data: '64%',
            ),
          ],
        ),
      ),
    );
  }
}

class DataColumn extends StatelessWidget {
  final String name;
  final String data;

  const DataColumn({@required this.name, this.data});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        Text(
          data,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

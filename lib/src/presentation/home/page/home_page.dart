import 'package:flutter/material.dart';
import 'package:weather_app/src/presentation/home/widget/weather_container.dart';
import 'package:weather_app/src/presentation/home/widget/weather_data_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              WeatherContainer(),
              SizedBox(
                height: 20,
              ),
              WeatherData(),
            ],
          ),
        ),
      ),
    );
  }
}

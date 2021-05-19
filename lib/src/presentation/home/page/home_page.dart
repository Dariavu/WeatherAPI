import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app/src/model/weather_model.dart';
import 'package:weather_app/src/presentation/home/widget/weather_container.dart';
import 'package:weather_app/src/presentation/home/widget/weather_data_container.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherModel weatherModel = WeatherModel();

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  void fetchData() async {
    final response = await get(
        'http://api.weatherstack.com/current?access_key=dd3957ecb139fc847163a22ba3cec74a&query=Lviv');
    final parsedJson = json.decode(response.body);

    setState(() {
      this.weatherModel = WeatherModel.fromJson(parsedJson);
    });
  }

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
              WeatherContainer(weatherModel: weatherModel),
              SizedBox(
                height: 20,
              ),
              WeatherData(
                weatherModel: weatherModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/src/model/weather_model.dart';

class WeatherContainer extends StatelessWidget {
  final WeatherModel weatherModel;

  WeatherContainer({
    @required this.weatherModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 25,
            left: 20,
            child: Image.network(
              weatherModel.weatherIcon,
              width: 60,
              height: 60,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: Text(
              weatherModel.weatherDescription,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            child: Text(
              '${weatherModel.timeZone}',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 30,
            child: Text(
              '${weatherModel.temperature}°',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 20,
            child: Text(
              '${weatherModel.cityName}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

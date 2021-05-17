import 'package:flutter/material.dart';

class WeatherContainer extends StatelessWidget {
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
            child: Icon(
              Icons.wb_sunny,
              size: 50,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: Text(
              'Heavy Rain',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            child: Text(
              'Morning',
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
              '29°',
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
              'Feels like 30°',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

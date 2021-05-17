import 'package:weather_app/src/model/weather_icon_model.dart';

class WeatherModel {
  final String cityName;
  final int temperature;
  final int windSpeed;
  final int humidity;
  final int visibility;
  final List<WeatherIconModel> weatherIcons;

  WeatherModel({
    this.cityName,
    this.temperature,
    this.windSpeed,
    this.humidity,
    this.visibility,
    this.weatherIcons,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      temperature: json['current']['temperature'],
      windSpeed: json['current']['wind_speed'],
      humidity: json['current']['humidity'],
      visibility: json['current']['visibility'],
      weatherIcons: (json['current']['weather_icons'] as List)
          .map((e) => WeatherIconModel.fromJson(e))
          .toList(),
    );
  }
}

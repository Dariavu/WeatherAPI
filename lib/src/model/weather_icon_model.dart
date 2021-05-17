class WeatherIconModel {
  List weatherIcons;

  WeatherIconModel({this.weatherIcons});

  factory WeatherIconModel.fromJson(Map<String, dynamic> json) {
    return WeatherIconModel(
      weatherIcons: json['current']['weather_icons'],
    );
  }
}

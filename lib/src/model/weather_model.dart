class WeatherModel {
  final String cityName;
  final int temperature;
  final int windSpeed;
  final int humidity;
  final int visibility;
  final String weatherDescription;
  final String weatherIcon;
  final String timeZone;

  WeatherModel({
    this.cityName,
    this.temperature,
    this.windSpeed,
    this.humidity,
    this.visibility,
    this.weatherDescription,
    this.weatherIcon,
    this.timeZone,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      temperature: json['current']['temperature'],
      windSpeed: json['current']['wind_speed'],
      humidity: json['current']['humidity'],
      visibility: json['current']['visibility'],
      weatherDescription: json['current']['weather_descriptions'][0],
      weatherIcon: json['current']['weather_icons'][0],
      timeZone: json['location']['timezone_id'],
    );
  }
}

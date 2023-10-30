import 'package:ps_weather_app/features/weather_info/domain/entities/weather_info.dart';

class WeatherInfoAdapter {
  static WeatherInfo fromJson(Map<String, dynamic> json) {
    return WeatherInfo(
      cityName: json['name'],
      weatherInfos: json['Informacoes do tempo'],
      description: json['description'],
    );
  }
}

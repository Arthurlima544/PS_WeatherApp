import 'package:ps_weather_app/features/weather/domain/entities/weather.dart';

class WeatherAdapter {
  static Weather fromJson(Map<String, dynamic> data) {
    return Weather(
      cityName: data['cidade'],
      temperatureCelcius: data['temperatura'],
      weatherDescription: data['descricao'],
    );
  }

  static Map<String, dynamic> toJson(Weather weather) {
    return {
      'cidade': weather.cityName,
      'temperatura': weather.temperatureCelcius,
      'descricao': weather.weatherDescription,
    };
  }
}

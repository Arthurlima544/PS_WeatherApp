import 'package:equatable/equatable.dart';

class WeatherInfo extends Equatable {
  final String cityName;
  final String weatherInfos;
  final String description;

  const WeatherInfo({
    required this.cityName,
    required this.weatherInfos,
    required this.description,
  });

  @override
  List<Object?> get props => [
        cityName,
        weatherInfos,
        description,
      ];
}

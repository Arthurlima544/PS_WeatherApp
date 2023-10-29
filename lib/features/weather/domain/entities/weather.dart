import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Core Entity of the application, Describe all the relevant data of a City
class Weather extends Equatable {
  final String cityName;
  final int temperatureCelcius;
  final String weatherDescription;

  const Weather({
    required this.cityName,
    required this.temperatureCelcius,
    required this.weatherDescription,
  });

  @override
  String toString() {
    return '''Weather(
    cityName: $cityName, 
    temperatureCelcius: $temperatureCelcius, 
    weatherDescription: $weatherDescription, 
    )''';
  }

  @override
  List<Object?> get props {
    return [
      cityName,
      temperatureCelcius,
      weatherDescription,
    ];
  }
}

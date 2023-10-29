import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Core Entity of the application, Describe all the relevant data of a City
class Weather extends Equatable {
  final String cityName;
  final int temperatureCelcius;
  final String weatherDescription;
  final Image? image;

  const Weather({
    required this.cityName,
    required this.temperatureCelcius,
    required this.weatherDescription,
    required this.image,
  });

  @override
  String toString() {
    return '''Weather(
    cityName: $cityName, 
    temperatureCelcius: $temperatureCelcius, 
    weatherDescription: $weatherDescription, 
    image: $image
    )''';
  }

  @override
  List<Object?> get props {
    return [
      cityName,
      temperatureCelcius,
      weatherDescription,
      image,
    ];
  }
}

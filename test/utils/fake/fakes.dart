import 'package:flutter/material.dart';
import 'package:ps_weather_app/features/weather/domain/entities/weather.dart';
import 'package:ps_weather_app/utils/failure.dart';

final fakeSucessWeather = Weather(
  cityName: 'Ceará',
  temperatureCelcius: 32,
  weatherDescription: 'Sol',
  image: Image.asset('assets/images/cloudy.png'),
);

const fakeCityNotFoundFailure = CityNotFoundFailure(
  "cidade não encontrada",
);

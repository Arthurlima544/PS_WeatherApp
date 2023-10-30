import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ps_weather_app/features/weather/domain/entities/weather.dart';
import 'package:ps_weather_app/utils/failure.dart';

const fakeSucessWeather = Weather(
  cityName: 'Ceará',
  temperatureCelcius: 32,
  weatherDescription: 'Sol',
);

const fakeCityNotFoundFailure = CityNotFoundFailure(
  "cidade não encontrada",
);

const fakePostRequestWeather = {
  "name": "Ceará",
  "tempo": 32,
  "description": "Sol",
};

final fakeDioException = DioException(
  requestOptions: RequestOptions(),
  response: Response(
    statusCode: 400,
    requestOptions: RequestOptions(),
  ),
);

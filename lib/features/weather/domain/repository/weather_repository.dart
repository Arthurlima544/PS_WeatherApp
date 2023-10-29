import 'package:dartz/dartz.dart';
import 'package:ps_weather_app/features/weather/domain/entities/weather.dart';
import 'package:ps_weather_app/utils/failure.dart';

abstract class IWeatherRepository {
  Future<Either<Failure, Weather>> getWeather(String cityName);
}

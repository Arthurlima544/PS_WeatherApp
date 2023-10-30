import 'package:dartz/dartz.dart';
import 'package:ps_weather_app/features/weather_info/domain/entities/weather_info.dart';
import 'package:ps_weather_app/utils/failure.dart';

abstract class IWeatherInfoRepository {
  Future<Either<Failure, WeatherInfo>> getWeatherInfo();
}

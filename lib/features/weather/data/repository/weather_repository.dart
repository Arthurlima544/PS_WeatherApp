import 'package:dartz/dartz.dart';
import 'package:ps_weather_app/features/weather/data/adapter/weather_adapter.dart';
import 'package:ps_weather_app/features/weather/data/datasource/weather_datasource.dart';
import 'package:ps_weather_app/features/weather/domain/entities/weather.dart';
import 'package:ps_weather_app/features/weather/domain/repository/weather_repository.dart';
import 'package:ps_weather_app/utils/failure.dart';

class WeatherRepository implements IWeatherRepository {
  final IWeatherDatasource _weatherDataSource;

  WeatherRepository(this._weatherDataSource);
  @override
  Future<Either<Failure, Weather>> getWeather(String cityName) async {
    try {
      final result = await _weatherDataSource.getWeather(cityName);

      return Right(WeatherAdapter.fromJson(result.data));
    } catch (e) {
      return Left(WeatherServerFailure(e.toString()));
    }
  }
}

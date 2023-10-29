import 'package:dartz/dartz.dart';
import 'package:ps_weather_app/features/weather/domain/entities/weather.dart';
import 'package:ps_weather_app/features/weather/domain/repository/weather_repository.dart';
import 'package:ps_weather_app/utils/const.dart';
import 'package:ps_weather_app/utils/failure.dart';

class GetWeatherUseCase {
  final IWeatherRepository _weatherRepository;

  GetWeatherUseCase(this._weatherRepository);

  Future<Either<Failure, Weather>> call(String cityName) async {
    if (!brazilStates.contains(cityName)) {
      return const Left(CityNotFoundFailure("cidade não encontrada"));
    }
    return await _weatherRepository.getWeather(cityName);
  }
}

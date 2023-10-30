import 'package:dartz/dartz.dart';
import 'package:ps_weather_app/features/weather_info/domain/entities/weather_info.dart';
import 'package:ps_weather_app/features/weather_info/domain/repository/weather_info_repository.dart';
import 'package:ps_weather_app/utils/failure.dart';

class GetWeatherInfoUseCase {
  final IWeatherInfoRepository _weatherInfoRepository;

  GetWeatherInfoUseCase(this._weatherInfoRepository);

  Future<Either<Failure, WeatherInfo>> call() async {
    return await _weatherInfoRepository.getWeatherInfo();
  }
}

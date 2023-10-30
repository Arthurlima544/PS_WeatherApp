import 'package:dartz/dartz.dart';
import 'package:ps_weather_app/features/weather_info/data/adapter/weather_info_adapter.dart';
import 'package:ps_weather_app/features/weather_info/data/datasource/weather_info_datasource.dart';
import 'package:ps_weather_app/features/weather_info/domain/entities/weather_info.dart';
import 'package:ps_weather_app/features/weather_info/domain/repository/weather_info_repository.dart';
import 'package:ps_weather_app/utils/failure.dart';

class WeatherInfoRepository implements IWeatherInfoRepository {
  final WeatherInfoDatasource dataSource;

  WeatherInfoRepository(this.dataSource);

  @override
  Future<Either<Failure, WeatherInfo>> getWeatherInfo() async {
    try {
      final result = await dataSource.getWeatherInfo();

      return Right(WeatherInfoAdapter.fromJson(result.data));
    } catch (e) {
      return Left(WeatherInfoServerFailure(e.toString()));
    }
  }
}

import 'package:ps_weather_app/features/weather/data/datasource/weather_datasource.dart';
import 'package:ps_weather_app/features/weather/domain/repository/weather_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockWeatherRepository extends Mock implements IWeatherRepository {}

class MockRemoteDataSource extends Mock implements IWeatherDatasource {}

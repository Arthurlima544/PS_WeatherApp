import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ps_weather_app/features/weather/data/repository/weather_repository.dart';
import 'package:ps_weather_app/utils/api/api_service.dart';
import 'package:ps_weather_app/utils/api/dio/dio_api_service.dart';
import 'package:ps_weather_app/utils/failure.dart';

import '../../../../utils/fake/fakes.dart';
import '../../../../utils/mocks/mocks.dart';

void main() {
  test('Should return a Weather when remote datasource complete the connection',
      () async {
    // arrange
    DioApiService apiService = DioApiService();
    final MockRemoteDataSource mockRemoteDataSource = MockRemoteDataSource();
    WeatherRepository weatherRepository =
        WeatherRepository(mockRemoteDataSource);
    when(() => mockRemoteDataSource.getWeather('Ceará')).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(
          path: "https://parseapi.back4app.com/parse/functions/tempo",
          headers: apiService.headers,
        ),
        data: fakePostRequestWeather,
      ),
    );
    // act
    final result = await weatherRepository.getWeather('Ceará');
    final sucessResult = result.fold(
      (l) => null,
      (r) => r,
    );
    // assert
    expect(sucessResult, equals(fakeSucessWeather));
  });
  test('Should return ServerWeatherFailure when statuscode is not 200',
      () async {
    // arrange
    final MockRemoteDataSource mockRemoteDataSource = MockRemoteDataSource();
    WeatherRepository weatherRepository =
        WeatherRepository(mockRemoteDataSource);
    when(() => mockRemoteDataSource.getWeather(any()))
        .thenThrow((_) async => fakeDioException);

    //act
    final result = await weatherRepository.getWeather('');
    final failureResult = result.fold(
      (l) => l,
      (r) => null,
    );

    expect(failureResult, isA<WeatherServerFailure>());
  });
}

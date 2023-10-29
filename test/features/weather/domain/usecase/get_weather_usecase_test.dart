import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ps_weather_app/features/weather/domain/usecase/get_weather_usecase.dart';
import 'package:ps_weather_app/utils/failure.dart';

import '../../../../utils/fake/fakes.dart';
import '../../../../utils/mocks/mocks.dart';

void main() {
  late MockWeatherRepository mockWeatherRepository;
  late GetWeatherUseCase getWeatherUseCase;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    getWeatherUseCase = GetWeatherUseCase(mockWeatherRepository);
  });
  test('Should return a Weather when calling getWeatherUseCase', () async {
    // arrange
    when(
      () => mockWeatherRepository.getWeather('Ceará'),
    ).thenAnswer((_) async => Right(fakeSucessWeather));

    // act
    final result = await getWeatherUseCase('Ceará');

    final sucessResult = result.fold(
      (l) => null,
      (r) => r,
    );
    // assert
    expect(sucessResult, equals(fakeSucessWeather));
  });

  test(
      'Should Return a CityNotFoundFailure when calling for some city that do not exit',
      () async {
    // arrange
    when(() => mockWeatherRepository.getWeather('Isso não é uma cidade'))
        .thenAnswer(
      (invocation) => Future.value(
        const Left(fakeCityNotFoundFailure),
      ),
    );

    // act
    final result = await getWeatherUseCase('Isso não é uma cidade');
    final failureResult = result.fold(
      (l) => l,
      (r) => null,
    );
    // assert
    expect(failureResult,
        equals(const CityNotFoundFailure("cidade não encontrada")));
  });
}

import 'package:ps_weather_app/utils/api/api_service.dart';

abstract class IWeatherDatasource {
  Future getWeather(String cityName);
}

class WeatherDatasource implements IWeatherDatasource {
  final IApiService _apiService;

  WeatherDatasource(this._apiService);

  @override
  Future getWeather(String cityName) async {
    return await _apiService.performPostRequest(
      "https://parseapi.back4app.com/parse/functions/tempo",
      {"cidade": cityName},
    );
  }
}

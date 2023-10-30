import 'package:ps_weather_app/utils/api/api_service.dart';

abstract class IWeatherInfoDatasource {
  Future getWeatherInfo();
}

class WeatherInfoDatasource implements IWeatherInfoDatasource {
  final IApiService _apiService;

  WeatherInfoDatasource(this._apiService);

  @override
  Future getWeatherInfo() async {
    return await _apiService.performPostRequest(
      "https://parseapi.back4app.com/parse/functions/informacoes_do_tempo",
      null,
    );
  }
}

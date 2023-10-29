import 'package:dio/dio.dart';
import 'package:ps_weather_app/utils/api/api_service.dart';

class DioApiService implements IApiService {
  final Dio dio = Dio();
  final Map<String, dynamic> headers = {
    "X-Parse-Application-Id": "nAX5VLA1WnL3qkzuYnlh4tzUqS9NJuKGL13L4vas",
    "X-Parse-REST-API-Key": "3Q8wzFGU6isxalfOyagYkz2bu0lCTcrtgJ7Q4iD7",
    "X-Parse-Revocable-Session": "1"
  };

  @override
  Future<Response> performPostRequest(
      String url, Map<String, dynamic> body) async {
    return await dio.post(
      url,
      options: Options(headers: headers),
      data: body,
    );
  }
}

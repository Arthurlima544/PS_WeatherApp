import 'package:equatable/equatable.dart';

/// This class is the base class for all the failures that can occur in the application
abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  String toString() => message;

  @override
  List<Object> get props => [message];
}

class WeatherFailure extends Failure {
  const WeatherFailure(String message) : super(message);
}

class CityNotFoundFailure extends WeatherFailure {
  const CityNotFoundFailure(String message) : super(message);
}

/// Generic failure when occur a problem in the server
class WeatherServerFailure extends WeatherFailure {
  const WeatherServerFailure(String message) : super(message);
}

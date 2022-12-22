import '../model/weather_model.dart';
import '../repository/weather_repository.dart';

class WeatherListUseCase {
  final WeatherRepository repository;

  const WeatherListUseCase({required this.repository});

  Future<List<WeatherModel>> getWeatherList(double latitude, double longitude) async {
    var weatherList =
        await repository.getWeatherList(latitude: latitude, longitude: longitude);

    return weatherList;
  }
}

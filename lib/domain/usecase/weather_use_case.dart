import '../model/weather_model.dart';
import '../repository/weather_repository.dart';

class WeatherListUseCase {
  final Repository repository;

  const WeatherListUseCase({required this.repository});

  Future<List<WeatherModel>> get(double latitude, double longitude) async {
    var weatherList =
        await repository.getWeatherList(latitude: latitude, longitude: longitude);

    return weatherList;
  }
}

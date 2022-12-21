import 'package:weather_app/data/api/model/daily_weather_dto.dart';
import 'package:weather_app/data/api/request/get_weather_request.dart';
import 'package:weather_app/data/api/service/weather_service.dart';

class RemoteWeatherDataSource {
  final WeatherService weatherService;

  RemoteWeatherDataSource({required this.weatherService});

  Future<DailyWeatherDTO> getWeather ({
    required double latitude,
    required double longitude,
  }) async {
    final request = GetWeatherRequest(latitude: latitude, longitude: longitude);
    final result = await weatherService.getWeather(request);
    return result;
  }
}
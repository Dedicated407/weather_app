import '../model/weather_model.dart';

abstract class WeatherRepository {
  Future<List<WeatherModel>> getWeatherList(
      {
        required double latitude,
        required double longitude,
        String timezone = "Europe/Moscow"
      }
  );
}
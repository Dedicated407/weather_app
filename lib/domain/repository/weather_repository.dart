import '../model/weather_model.dart';

abstract class Repository {
  Future<List<WeatherModel>> getWeatherList(
      {
        required double latitude,
        required double longitude,
        String timezone = "Europe/Moscow"
      }
  );
}
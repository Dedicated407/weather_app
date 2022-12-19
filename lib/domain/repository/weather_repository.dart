import '../model/weather_model.dart';

abstract class Repository {
  Future<WeatherModel> getWeather({
  required double latitude,
  required double longitude
});
}
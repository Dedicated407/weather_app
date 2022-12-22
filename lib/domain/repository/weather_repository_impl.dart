import 'package:weather_app/domain/model/weather_model.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';

import '../../data/api/remote_weather_data_source.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final RemoteWeatherDataSource remote;

  WeatherRepositoryImpl({required this.remote});

  @override
  Future<List<WeatherModel>> getWeatherList(
      {required double latitude,
      required double longitude,
      String timezone = "Europe/Moscow"}) async {
    final weatherDto =
        await remote.getWeather(latitude: latitude, longitude: longitude);

    return weatherDto.toDomain();
  }
}

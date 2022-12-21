import 'package:dio/dio.dart';
import 'package:weather_app/data/api/request/get_weather_request.dart';
import '../model/daily_weather_dto.dart';

class WeatherService {
  static const baseUrl = "https://api.open-meteo.com/v1";

  final Dio _dio = Dio(
    BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        headers: {
          'content-type': 'application/json',
        },
        connectTimeout: 60 * 1000,
        receiveTimeout: 60 * 1000),
  );

  Future<DailyWeatherDTO> getWeather(GetWeatherRequest request) async {
    final response = await _dio.get(
      '/json',
      queryParameters: request.toJson(),
    );

    return DailyWeatherDTO.fromJson(response.data);
  }
}

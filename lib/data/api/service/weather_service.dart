import 'package:dio/dio.dart';
import 'package:weather_app/data/api/request/get_weather_request.dart';
import '../model/daily_weather_dto.dart';

class WeatherService {
  static const baseUrl = "https://api.open-meteo.com/v1";
  static const daily =
      "weathercode,temperature_2m_max,temperature_2m_min,apparent_temperature_max,apparent_temperature_min,precipitation_sum,windspeed_10m_max&timezone=Europe%2FMoscow";

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
    print("Latitude: ${request.latitude}");
    print("longitude: ${request.longitude}");

    final response = await _dio.get(
      '/forecast?latitude=${request.latitude}&longitude=${request.longitude}&daily=$daily',
      queryParameters: request.toJson(),
    );

    print(response);

    return DailyWeatherDTO.fromJson(response.data);
  }
}

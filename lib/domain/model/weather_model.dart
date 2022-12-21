class WeatherModel {
  final int id;
  final String? time;
  final String? weatherCode;
  final String? temperatureMax;
  final String? temperatureMin;
  final String? apparentTemperatureMax;
  final String? apparentTemperatureMin;
  final String? precipitationSum;
  final String? windSpeed;

  WeatherModel({
    required this.id,
    required this.time,
    required this.weatherCode,
    required this.temperatureMax,
    required this.temperatureMin,
    required this.apparentTemperatureMax,
    required this.apparentTemperatureMin,
    required this.precipitationSum,
    required this.windSpeed
  });
}
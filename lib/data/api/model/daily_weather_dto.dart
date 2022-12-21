import '../../../domain/model/weather_model.dart';

class DailyWeatherDTO {
  List<int>? time;
  List<int>? weatherCode;
  List<double>? temperature2mMax;
  List<double>? temperature2mMin;
  List<double>? apparentTemperatureMax;
  List<double>? apparentTemperatureMin;
  List<double>? precipitationSum;
  List<double>? windspeed10mMax;

  DailyWeatherDTO({
    this.time,
    this.weatherCode,
    this.temperature2mMax,
    this.temperature2mMin,
    this.apparentTemperatureMax,
    this.apparentTemperatureMin,
    this.precipitationSum,
    this.windspeed10mMax,
  });

  DailyWeatherDTO.fromJson(Map<String, dynamic> json) {
    time = json['time'].cast<int>();
    weatherCode = json['weathercode'].cast<int>();
    temperature2mMax = json['temperature_2m_max'].cast<double>();
    temperature2mMin = json['temperature_2m_min'].cast<double>();
    apparentTemperatureMax = json['apparent_temperature_max'].cast<double>();
    apparentTemperatureMin = json['apparent_temperature_min'].cast<double>();
    precipitationSum = json['precipitation_sum'].cast<double>();
    windspeed10mMax = json['windspeed_10m_max'].cast<double>();
  }

  List<WeatherModel> toDomain() {
    List<WeatherModel> result = [];

    for (var i = 0; i < (time?.length ?? 0); i++) {
      result.add(WeatherModel(
          id: i,
          time: "${time![i]}",
          weatherCode: "${weatherCode?[i]} - код погоды",
          temperatureMax: "${temperature2mMax?[i]} °C",
          temperatureMin: "${temperature2mMin?[i]} °C",
          apparentTemperatureMax: "${apparentTemperatureMax?[i]} °C",
          apparentTemperatureMin: "${apparentTemperatureMin?[i]} °C",
          precipitationSum: "${precipitationSum?[i]} мм",
          windSpeed: "${windspeed10mMax?[i]} м/c"));
    }

    return result;
  }
}

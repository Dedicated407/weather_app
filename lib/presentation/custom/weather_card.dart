import 'package:flutter/material.dart';

import '../../domain/model/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weather;

  const WeatherCard({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(2), child: Text("Date:")),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(weather.time ?? "Not Found"))
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(2), child: Text("Weather:")),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(weather.weatherCode ?? "Not Found"))
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(2), child: Text("Temperature Max:")),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(weather.temperatureMax ?? "Not Found"))
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(2), child: Text("Temperature Min:")),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(weather.temperatureMin ?? "Not Found"))
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(2), child: Text("Apparent temperature Max:")),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(weather.apparentTemperatureMax ?? "Not Found"))
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(2), child: Text("Apparent temperature Min:")),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(weather.apparentTemperatureMin ?? "Not Found"))
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(2), child: Text("Precipitation sum:")),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(weather.precipitationSum ?? "Not Found"))
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(2), child: Text("Wind speed:")),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(weather.windSpeed ?? "Not Found"))
                ],
              )),
        ],
      ),
    );
  }
}

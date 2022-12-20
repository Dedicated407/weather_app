import 'package:flutter/material.dart';

import '../../domain/model/weather_model.dart';
import 'icon_text.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weather;

  const WeatherCard({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconText(
                  label: "Дата", value: weather.time, icon: Icons.access_time),
              const SizedBox(height: 5),
              const Text("Температура", style: TextStyle(fontSize: 16)),
              Row(
                children: [
                  IconText(
                      label: "Max",
                      value: weather.temperatureMax,
                      icon: Icons.thermostat),
                  const SizedBox(height: 10),
                  IconText(
                      label: "Min",
                      value: weather.temperatureMin,
                      icon: Icons.thermostat),
                ],
              ),
              const SizedBox(height: 5),
              const Text("По ощущениям", style: TextStyle(fontSize: 16)),
              Row(
                children: [
                  IconText(
                      label: "Max",
                      value: weather.apparentTemperatureMax,
                      icon: Icons.thermostat),
                  const SizedBox(width: 5),
                  IconText(
                      label: "Min",
                      value: weather.apparentTemperatureMin,
                      icon: Icons.thermostat),
                ],
              ),
              const SizedBox(height: 5),
              const Text("Ветер", style: TextStyle(fontSize: 16)),
              Column(
                children: [
                  IconText(
                      label: "Скорость",
                      value: weather.windSpeed,
                      icon: Icons.speed),
                ],
              ),
            ],
          ),
        ));
  }
}

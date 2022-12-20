import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weather_bloc.dart';
import '../bloc/weather_state.dart';
import '../weather_daily_page.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Weather daily info",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SizedBox.expand(
        child: BlocConsumer<WeatherListBloc, WeatherState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is WeatherLoaded) {
              return WeatherDailyView(weatherList: state.list);
            } else {
              return const WeatherDailyView(weatherList: []);
            }
          },
        ),
      ),
    );
  }
}

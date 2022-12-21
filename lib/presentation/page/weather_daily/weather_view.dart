import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/weather_bloc.dart';
import '../../bloc/weather_state.dart';
import '../../weather_daily_page.dart';
import '../home/home_view.dart';

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
        title: const Text('Weather application!',
          style: TextStyle(fontSize: 18),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          )
        ],
      ),
      body: SizedBox.expand(
        child: BlocConsumer<WeatherListBloc, WeatherState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is WeatherLoaded) {
              return WeatherDailyView(weatherList: state.list);
            } else {
              return const HomeView();
            }
          },
        ),
      ),
    );
  }
}

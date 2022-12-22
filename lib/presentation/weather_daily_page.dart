import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/model/weather_model.dart';
import 'bloc/weather_bloc.dart';
import 'bloc/weather_event.dart';
import 'custom/weather_card.dart';

class WeatherDailyView extends StatelessWidget {
  final List<WeatherModel> weatherList;

  const WeatherDailyView({Key? key, required this.weatherList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
      child: Column(
        children: [
          Expanded(
            child: PageView(
                scrollDirection: Axis.horizontal,
                children: weatherList
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(4),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .90,
                            child: WeatherCard(weather: e),
                          ),
                        ))
                    .toList()),
          ),
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<WeatherListBloc>(context).add(
                    WeatherDropEventImpl());
              },
              child: const Text("Get new data!"))
        ],
      ),
    );
  }
}

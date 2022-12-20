import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/model/weather_model.dart';
import 'bloc/weather_bloc.dart';
import 'bloc/weather_event.dart';
import 'custom/RoundButton.dart';
import 'custom/weather_card.dart';

class WeatherDailyView extends StatelessWidget {
  final List<WeatherModel> weatherList;

  const WeatherDailyView({Key? key, required this.weatherList})
      : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Daily page'),
  //       actions: <Widget>[
  //         IconButton(
  //           icon: const Icon(Icons.home),
  //           tooltip: 'Home page',
  //           onPressed: () {
  //             Navigator.pushNamed(context, '/home');
  //           },
  //         )
  //       ],
  //     ),
  //     body: _buildBody(),
  //   );
  // }
  //
  // Widget _buildBody() {
  //   return Column(mainAxisSize: MainAxisSize.max, children: [
  //     const Padding(padding: EdgeInsets.all(16), child: Text("ttt")),
  //     Text(
  //       weatherList.last.weatherCode ?? "not found",
  //       style: const TextStyle(fontSize: 20),
  //       textDirection: TextDirection.ltr,
  //     ),
  //   ]);
  // }

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundButton(
                iconData: Icons.refresh,
                onTap: () {
                  BlocProvider.of<WeatherListBloc>(context)
                      .add(GetWeatherEvent());
                },
              ),
              RoundButton(
                iconData: Icons.location_on,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

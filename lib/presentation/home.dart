import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/bloc/weather_event.dart';

import 'bloc/weather_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String latitude = '';
  String longitude = '';

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      Expanded(
          child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: (value) => setState(() => latitude = value),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(136, 14, 79, 1))),
                hintText: 'Write latitude',
                focusColor: Colors.red,
              ),
            )),
        Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: (value) => setState(() => longitude = value),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(136, 14, 79, 1))),
                hintText: 'Write longitude',
                focusColor: Colors.red,
              ),
            )),
      ])),
      Container(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          child: const Text(
            'Get weather!!',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            BlocProvider.of<WeatherListBloc>(context).add(
                WeatherEventImpl(latitude: latitude, longitude: longitude));
          },
        ),
      ),
    ]);
  }
}

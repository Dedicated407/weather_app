import 'package:flutter/material.dart';
import '../presentation/page/weather_daily/weather_page.dart';
import '../presentation/settings_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather application',
      theme: ThemeData(
        primarySwatch: _materialColor,
        backgroundColor: _materialColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WeatherPage(),
      routes: {
        '/weather_daily': (context) => const WeatherPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }

  final MaterialColor _materialColor = const MaterialColor(0xFF880E4F, color);

  static const Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };
}

import 'package:flutter/material.dart';
import '../presentation/home.dart';
import '../presentation/settings_page.dart';
import '../presentation/weather_daily_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: {
        '/weather_daily': (context) => const WeatherDailyPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
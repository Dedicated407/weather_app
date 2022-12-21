import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/page/weather_daily/weather_view.dart';

import '../../../internal/dependencies/injection.dart';
import '../../bloc/weather_bloc.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (_) => serviceLocator<WeatherListBloc>(),
      )
    ], child: const WeatherView());
  }
}

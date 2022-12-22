import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/model/weather_model.dart';

@immutable
abstract class WeatherState extends Equatable {
  const WeatherState();
}

class WeatherLoading extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoaded extends WeatherState {
  final List<WeatherModel> list;
  const WeatherLoaded({required this.list});
  @override
  List<Object> get props => [];
}

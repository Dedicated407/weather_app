import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class WeatherEvent extends Equatable {
  String latitude = "0.0";
  String longitude = "0.0";
}

class GetWeatherEvent extends WeatherEvent {
  GetWeatherEvent();

  @override
  List<Object?> get props => [];
}

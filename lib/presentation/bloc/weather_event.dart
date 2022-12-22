import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class WeatherEvent extends Equatable {
}

class WeatherEventImpl extends WeatherEvent {
  String latitude;
  String longitude;

  WeatherEventImpl({this.latitude = "0.0", this.longitude = "0.0"});

  @override
  List<Object?> get props => [];
}

class WeatherDropEventImpl extends WeatherEvent {
  WeatherDropEventImpl();

  @override
  List<Object?> get props => [];
}
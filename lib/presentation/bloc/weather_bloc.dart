import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/bloc/weather_event.dart';
import 'package:weather_app/presentation/bloc/weather_state.dart';

import '../../domain/usecase/weather_use_case.dart';

class WeatherListBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherListUseCase useCase;

  WeatherListBloc({required this.useCase}) : super(WeatherInitial()) {
    on<GetWeatherEvent>(_getDataEvent);
  }

  _getDataEvent(GetWeatherEvent event, emit) async {
    emit(WeatherLoading());

    final result = await useCase.getWeatherList(
        double.parse(event.latitude), double.parse(event.longitude)
    );

    emit(WeatherLoaded(list: result));
  }
}

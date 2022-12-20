import 'package:get_it/get_it.dart';
import 'package:weather_app/presentation/bloc/weather_bloc.dart';
import 'domain/usecase/weather_use_case.dart';

final sl = GetIt.I; // Service locator

Future<void> init() async {
  sl.registerFactory(() => WeatherListBloc(useCase: sl()));
  sl.registerFactory(() => WeatherListUseCase(repository: sl()));
}

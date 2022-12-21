import 'package:get_it/get_it.dart';
import 'package:weather_app/data/api/remote_weather_data_source.dart';
import 'package:weather_app/data/api/service/weather_service.dart';
import 'package:weather_app/presentation/bloc/weather_bloc.dart';
import '../../domain/repository/weather_repository.dart';
import '../../domain/repository/weather_repository_impl.dart';
import '../../domain/usecase/weather_use_case.dart';

final serviceLocator = GetIt.instance; // Service locator

Future<void> init() async {
  serviceLocator
      .registerFactory(() => WeatherListBloc(useCase: serviceLocator()));
  serviceLocator
      .registerFactory(() => WeatherListUseCase(repository: serviceLocator()));
  serviceLocator.registerFactory<WeatherRepository>(
      () => WeatherRepositoryImpl(remote: serviceLocator()));

  serviceLocator.registerFactory(() => WeatherService());

  serviceLocator.registerFactory(
      () => RemoteWeatherDataSource(weatherService: serviceLocator()));
}

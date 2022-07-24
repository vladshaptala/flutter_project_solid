import 'package:flutter_project_solid/pages/cubit/main_cubit.dart';
import 'package:flutter_project_solid/services/color_generator_service.dart';
import 'package:flutter_project_solid/services/color_generator_service_impl.dart';
import 'package:get_it/get_it.dart';


final di = GetIt.instance;

Future<void> init() async {

  // //cubit
  di.registerFactory(() => MainCubit(di()));

  // //service
  di.registerLazySingleton<ColorGeneratorService>(() => ColorGeneratorServiceImpl());

}

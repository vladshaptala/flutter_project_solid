import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_solid/pages/cubit/main_state.dart';
import 'package:flutter_project_solid/services/color_generator_service.dart';

class MainCubit extends Cubit<MainState> {
  final ColorGeneratorService _colorGeneratorService;

  MainCubit(this._colorGeneratorService) : super(MainState());

  void generateColor (){
    final newColorHex = _colorGeneratorService.generateRandomColor();
    emit(state.copyWith(colorHex: newColorHex));
  }
}

import 'dart:math';

import 'package:flutter_project_solid/common/constants.dart';
import 'package:flutter_project_solid/services/color_generator_service.dart';

class ColorGeneratorServiceImpl implements ColorGeneratorService {
  @override
  int generateRandomColor() {
    // TODO: implement generateRandomColor
    return Random().nextInt(defaultColor);
  }
}

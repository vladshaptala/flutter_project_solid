import 'package:flutter_project_solid/common/constants.dart';

class MainState {
  final int colorHex;

  MainState({
    this.colorHex = defaultColor,
  });

  MainState copyWith({
    int? colorHex,
  }) {
    return MainState(
      colorHex: colorHex ?? this.colorHex,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MainState && other.colorHex == colorHex;
  }

  @override
  int get hashCode => colorHex.hashCode;
}

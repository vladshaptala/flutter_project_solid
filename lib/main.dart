import 'package:flutter/material.dart';
import 'package:flutter_project_solid/di_container.dart' as diContainer;
import 'package:flutter_project_solid/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await diContainer.init();
  runApp(MyApp());
}

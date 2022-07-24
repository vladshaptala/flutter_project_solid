import 'package:flutter/material.dart';

import 'package:flutter_project_solid/pages/main_page.dart';

class MyApp extends StatelessWidget {


  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MainPage(),
    );
  }
}

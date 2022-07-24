import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_solid/di_container.dart';
import 'package:flutter_project_solid/pages/cubit/main_cubit.dart';
import 'package:flutter_project_solid/pages/cubit/main_state.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _cubit = di<MainCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return Scaffold(
            body: _ColorfulContainer(
              colorHex: state.colorHex,
              onTap: _cubit.generateColor,
            ),
          );
        },
      ),
    );
  }
}

class _ColorfulContainer extends StatelessWidget {
  final int colorHex;
  final VoidCallback onTap;

  const _ColorfulContainer({
    required this.colorHex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(colorHex),
        child: const Center(
          child: Text('Hey there'),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:bloc_app1_counter/Pages/Counter_ui.dart';
import 'package:bloc_app1_counter/blocs/counter/bloc/counter_bloc.dart';
import 'package:bloc_app1_counter/blocs/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterBloc()),
          BlocProvider(create: (context) => ThemeBloc()..add(ThemeCurrentEvent())),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
          if (state is ThemeChangeState) {
              return MaterialApp(
                title: 'Flutter Demo',
                theme: state.theme,
                debugShowCheckedModeBanner: false,
                home: CounterUi(),
              );
            }
            return Container();
          },
        ));
  }
}

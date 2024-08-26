// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bloc_app1_counter/blocs/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonCounter extends StatelessWidget {
  const ButtonCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
          },
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.teal),
              foregroundColor: WidgetStatePropertyAll(Colors.white)),
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResetEvent());
          },
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.teal),
              foregroundColor: WidgetStatePropertyAll(Colors.white)),
          child: const Text('0'),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
          },
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.teal),
              foregroundColor: WidgetStatePropertyAll(Colors.white)),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}

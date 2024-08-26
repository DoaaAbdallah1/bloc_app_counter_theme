// ignore_for_file: prefer_const_constructors

import 'package:bloc_app1_counter/blocs/theme/bloc/theme_bloc.dart';
import 'package:bloc_app1_counter/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonSetting extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? bg;
  final AppTheme theme;
  const ButtonSetting(
      {super.key, required this.text, required this.style, required this.bg, required  this.theme});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<ThemeBloc>(context).add(ThemeChangeEvent(theme: theme));
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(19)),
            color: bg,
          ),
          child: Center(
            child: Text(text, style: style),
          )),
    );
  }
}

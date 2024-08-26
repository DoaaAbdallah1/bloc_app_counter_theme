// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bloc_app1_counter/shared/button_setting.dart';
import 'package:bloc_app1_counter/theme/theme_app.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: AppTheme.values.length,
            itemBuilder: (context, index) {
              final itemAppTheme = AppTheme.values[index];
              return ButtonSetting(
                bg: appThemeData[itemAppTheme]!.primaryColor,
                text: itemAppTheme.name,
                style: appThemeData[itemAppTheme]!.textTheme.displayLarge,
                theme: itemAppTheme
              );
            },
          )),
    );
  }
}

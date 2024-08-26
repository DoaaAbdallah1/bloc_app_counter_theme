import 'package:bloc/bloc.dart';
import 'package:bloc_app1_counter/theme/theme_app.dart';
import 'package:bloc_app1_counter/theme/theme_cache_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ThemeEvent>((event, emit) async {
      if (event is ThemeCurrentEvent) {
      int themeIndex=  await ThemeCacheHelper().getCachedThemeIndex();
      final theme= AppTheme.values.firstWhere((appTheme)=>appTheme.index==themeIndex);
        emit(ThemeChangeState(theme:appThemeData[theme]! ));
      } else if (event is ThemeChangeEvent) {
        final themeIndex= event.theme.index;
        await ThemeCacheHelper().cacheThemeIndex(themeIndex);
         
        emit(ThemeChangeState(theme: appThemeData[event.theme]! ));
      } 
      
    });
  }
}

part of 'theme_bloc.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();
  
  @override
  List<Object> get props => [];
}

final class ThemeInitial extends ThemeState {}

final class ThemeChangeState extends ThemeState {
  final ThemeData theme;

  const ThemeChangeState({required this.theme });

  @override
  List<Object> get props => [theme];
}


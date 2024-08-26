part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterChangedState extends CounterState {
  final int value;

  CounterChangedState({required this.value });
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
    
      switch (event) {
        case IncrementEvent():
          counter =counter + 1;
          emit(CounterChangedState(value: counter));
          break;
        case DecrementEvent():
          counter =counter - 1;
          emit(CounterChangedState(value: counter));
          break;
        case ResetEvent():
          counter = 0;
          emit(CounterChangedState(value: counter));
          break;
      }
    });
  }
}

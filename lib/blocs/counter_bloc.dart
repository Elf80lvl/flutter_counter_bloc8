import 'package:flutter_bloc/flutter_bloc.dart';

import '../events/counter_event.dart';
import '../states/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrement>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });
    on<CounterDecrement>((event, emit) {
      emit(CounterState(counter: state.counter - 1));
    });
    on<CounterSetZero>((event, emit) {
      emit(CounterState(counter: state.counter = 0));
    });
  }
}

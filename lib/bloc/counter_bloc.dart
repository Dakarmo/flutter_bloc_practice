import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterState(state.count + 1)); // Incrémente le counter
    });
    on<CounterDecrementPressed>((event, emit) {
      emit(CounterState(state.count - 1)); // Decrémente le counter
    });
    on<CounterResset>((event, emit) {
      emit(CounterState(0)); // Decrémente le counter
    });
  }
}

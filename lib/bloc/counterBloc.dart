import 'package:bloc/bloc.dart';
import 'package:counter_app/bloc/counterEvents.dart';

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc(initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(event) async* {
    switch (event) {
      case CounterEvents.add:
        yield state + 1;
        break;
      case CounterEvents.remove:
        yield state - 1;
        break;
    }
  }
}

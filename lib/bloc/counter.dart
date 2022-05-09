//counter event
//counter state
//Bloc counter class

import 'package:equatable/equatable.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCounter extends Bloc<CounterEvent, CounterState> {
  BlocCounter() : super(const CounterState(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is Increment) {
      final blocCount = state.count + 1;
      yield CounterState(blocCount);
    } else {
      if (event is Decrement) {
        final blocCount = state.count - 1;
        yield CounterState(blocCount);
      }
    }
  }
}

class CounterState extends Equatable {
  final int count;
  const CounterState(this.count);

  @override
  List<Object?> get props => [count];
}

class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object?> get props => [];
}

class Increment extends CounterEvent {
  const Increment();
}

class Decrement extends CounterEvent {
  const Decrement();
}

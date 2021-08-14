import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/counter.dart';

final counterProvider = StateNotifierProvider<CounterController, Counter>(
    (ref) => CounterController());

class CounterController extends StateNotifier<Counter> {
  CounterController() : super(Counter(count: 0, isEnabled: true));

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

  void disableCounter() {
    state = state.copyWith(isEnabled: false);
  }
}

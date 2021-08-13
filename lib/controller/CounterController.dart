import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/CounterModel.dart';

final counterProvider = StateNotifierProvider<CounterController, CounterModel>(
    (ref) => CounterController());

class CounterController extends StateNotifier<CounterModel> {
  CounterController() : super(CounterModel(count: 0, isEnabled: true));

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

  void disableCounter() {
    state = state.copyWith(isEnabled: false);
  }
}

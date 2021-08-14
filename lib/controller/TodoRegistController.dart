import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/TodoRegistModel.dart';

final todoRegistProvider =
    StateNotifierProvider<TodoRegistController, TodoRegistModel>(
        (ref) => TodoRegistController());

class TodoRegistController extends StateNotifier<TodoRegistModel> {
  TodoRegistController()
      : super(TodoRegistModel(
            id: '', title: '', detail: '', category: '', date: null));

  void setId(String value) {
    state = state.copyWith(id: value);
  }

  void setTitle(String value) {
    state = state.copyWith(title: value);
  }

  void setDetail(String value) {
    state = state.copyWith(detail: value);
  }

  void setCategory(String value) {
    state = state.copyWith(category: value);
  }

  void setDate(DateTime value) {
    state = state.copyWith(date: value);
  }

  void init() {
    state =
        state.copyWith(id: '', title: '', detail: '', category: '', date: null);
  }

  void update(
      String id, String title, String detail, DateTime date, String category) {
    state = state.copyWith(
        id: id, title: title, detail: detail, category: category, date: date);
  }
}

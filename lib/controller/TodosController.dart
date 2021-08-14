import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/HomeModel.dart';
import 'package:todoapp/model/TodosModel.dart';

final todosProvider = StateNotifierProvider<TodosController, TodosModel>(
    (ref) => TodosController());

class TodosController extends StateNotifier<TodosModel> {
  TodosController() : super(TodosModel(todos: []));

  void setTodos(List<HomeModel> list) {
    state = state.copyWith(todos: list);
  }
}

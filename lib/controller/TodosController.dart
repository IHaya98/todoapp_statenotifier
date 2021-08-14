import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/home.dart';
import 'package:todoapp/model/todos.dart';

final todosProvider =
    StateNotifierProvider<TodosController, Todos>((ref) => TodosController());

class TodosController extends StateNotifier<Todos> {
  TodosController() : super(Todos(todos: []));

  void setTodos(List<Home> list) {
    state = state.copyWith(todos: list);
  }
}

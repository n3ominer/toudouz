
import 'package:flutter/material.dart';
import 'package:todolist_w_provider/const.dart';
import 'package:todolist_w_provider/pages/todo_list.dart';

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = List.from(mockTodos);

  List<Todo> get todos => _todos;

  void add(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  /// Remove a list of 1 or more todos
  void remove(List<Todo> todo) {
    _todos.remove(todo);
    notifyListeners();
  }

  void removeAll() {
    _todos.clear();
    notifyListeners();
  }

  void updateTodoCompletionState(int todoPosition, bool newState) {
    _todos[todoPosition].isCompleted = newState;
    notifyListeners();
  }

  void filterTodosBy(String filterTag) {
    _todos.clear();
    if (filterTag == allTodosFilter) {
      _todos.addAll(List.from(mockTodos));
    } else {
      _todos.addAll(getCompletedTodos());
    }
    notifyListeners();
  }

  int getCompletedTodosCount() {
    return _todos.fold(0, (previousValue, todo) => todo.isCompleted ? previousValue + 1 : previousValue);
  }

  List<Todo> getCompletedTodos() {
    List<Todo> todosCopy = List.from(mockTodos);
    return todosCopy.where((element) => element.isCompleted).toList();
  }

}
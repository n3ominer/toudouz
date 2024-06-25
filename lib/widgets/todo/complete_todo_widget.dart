import 'package:flutter/material.dart';
import 'package:todolist_w_provider/const.dart';
import 'package:todolist_w_provider/provider/todos_provider.dart';
import 'package:todolist_w_provider/widgets/todo/todo_cell.dart';

class CompleteTodoWidget extends StatelessWidget {
  const CompleteTodoWidget({
    super.key,
    required this.todoIndex,
    required this.currentTodo,
    required this.todoProvider,
  });

  final Todo currentTodo;
  final TodoProvider todoProvider;
  final int todoIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 24, 8),
      child: Column(
        children: [
          SizedBox(height: todoIndex == 0 ? 20.0 : 0),
          TodoCellWidget(
            todoTitle: currentTodo.title,
            todoDescription: currentTodo.description,
            isTodoCompleted: currentTodo.isCompleted,
            todoDate: currentTodo.time,
            todoCompletion: (newState) {
              todoProvider.updateTodoCompletionState(todoIndex, newState);
            },
          ),
        ],
      ),
    );
  }
}
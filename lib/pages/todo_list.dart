import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_w_provider/const.dart';
import 'package:todolist_w_provider/pages/new_todo.dart';
import 'package:todolist_w_provider/provider/todos_provider.dart';
import 'package:todolist_w_provider/widgets/home/add_todo_fab.dart';
import 'package:todolist_w_provider/widgets/todo/complete_todo_widget.dart';
import 'package:todolist_w_provider/widgets/home/todo_filter.dart';

const String allTodosFilter = "ALL_FILTER_SECTION";
const String doneFilter = "DONE_FILTER_SECTION";

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  Set<String> _filter = {allTodosFilter};

  List<Todo> todoList = [];

  void updatedSelectedFilter(Set<String> newSelection) {
    setState(() {
      _filter = newSelection;
    });
  }

  @override
  Widget build(BuildContext context) {
    TodoProvider todoProvider = Provider.of<TodoProvider>(context);
    todoList = todoProvider.todos;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                TodoFilterSegmentedWidget(
                  callback: (filterTag) {
                    todoProvider.filterTodosBy(filterTag.first);
                    updatedSelectedFilter(filterTag);
                  },
                  filterSet: _filter,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: ListView.builder(
                      itemCount: todoProvider.todos.length,
                      itemBuilder: (BuildContext context, int todoIndex) {
                        Todo currentTodo = todoProvider.todos[todoIndex];
                        return CompleteTodoWidget(
                          currentTodo: currentTodo,
                          todoProvider: todoProvider,
                          todoIndex: todoIndex,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: -45,
              child: GestureDetector(
                onTap: () => {
                  showModalBottomSheet<void>(
                    isScrollControlled:true,
                    context: context,
                    //barrierColor: const Color.fromRGBO(252, 237, 172, 1),
                    backgroundColor: Colors.black,
                    builder: (BuildContext context) {
                      return const NewTodoBottomForm();
                    },
                  )
                },
                child: const AddTodoCustomFab(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
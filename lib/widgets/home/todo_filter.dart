import 'package:flutter/material.dart';
import 'package:todolist_w_provider/pages/todo_list.dart';
import 'package:todolist_w_provider/widgets/home/todo_filter_chip.dart';

class TodoFilterSegmentedWidget extends StatelessWidget {
  
  final Function(Set<String>) callback;
  final Set<String> filterSet;

  const TodoFilterSegmentedWidget({
    required this.callback,
    required this.filterSet,
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20.0),
        GestureDetector(
          onTap: () {
            callback({allTodosFilter});
          },
          child: TodoFilterChip(
            filterName: "Todo",
            isSelected: filterSet.contains(allTodosFilter),
          ),
        ),
        const SizedBox(width: 10.0),
        GestureDetector(
          onTap: () {
            callback({doneFilter});
          },
          child: TodoFilterChip(
            filterName: "Done",
            isSelected: filterSet.contains(doneFilter),
          ),
        ),
      ],
    );
  }
}
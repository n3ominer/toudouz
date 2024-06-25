import 'package:flutter/material.dart';

class TodoCellWidget extends StatelessWidget {
  final String todoTitle;
  final String todoDescription;
  final String todoDate;
  final bool isTodoCompleted;
  final void Function(bool) todoCompletion;

  const TodoCellWidget({
    required this.todoTitle,
    required this.todoDescription,
    required this.isTodoCompleted,
    required this.todoDate,
    required this.todoCompletion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isTodoCompleted,
          onChanged: (state) {
            todoCompletion(state!);
          },
          activeColor: const Color.fromRGBO(252, 237, 172, 1),
          checkColor: Colors.black,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 80.0,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(252, 237, 172, 1),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          todoTitle,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          todoDescription,
                          style: const TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 11.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    todoDate,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    width: 16.0,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

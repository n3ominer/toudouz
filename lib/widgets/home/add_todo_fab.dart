import 'package:flutter/material.dart';

class AddTodoCustomFab extends StatelessWidget {
  const AddTodoCustomFab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        border: Border.all(
          color: const Color.fromARGB(255, 158, 158, 158),
          width: 3.0,
        ),
      ),
      height: 55.0,
      width: 100.0,
      child: Row(
        children: [
          const SizedBox(
            width: 10.0,
          ),
          Container(
            height: 40.0,
            width: 40.0,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(252, 237, 172, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  30.0,
                ),
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
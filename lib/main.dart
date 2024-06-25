import 'package:flutter/material.dart';
import 'package:todolist_w_provider/pages/todo_list.dart';
import 'package:provider/provider.dart';
import 'package:todolist_w_provider/provider/todos_provider.dart';
import 'package:todolist_w_provider/ui/color_consts.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.white,
            selectionColor: primaryColor,
            selectionHandleColor: primaryColor
          ),
          useMaterial3: true,
        ),
        home: const TodoList());
  }
}

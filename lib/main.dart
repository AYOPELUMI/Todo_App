import 'package:flutter/material.dart';
import 'package:to_do_app/toDoHome.dart';

void main() {
  runApp(ToDoApp());
}


class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Task App",
        theme: ThemeData(primaryColor: Colors.blue),
        home: ToDoHome(),
        debugShowCheckedModeBanner: false
    );
  }
}
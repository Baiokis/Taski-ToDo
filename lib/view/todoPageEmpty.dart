import 'package:flutter/material.dart';
import 'package:taski/common/widgets/headerTodoPage.dart';

class TodoPageEmpty extends StatelessWidget {
  const TodoPageEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = "Jhon Doe";
    final int numTask = 7;

    return Scaffold(body: Column(children: [Headertodopage(numTask, name)]));
  }
}

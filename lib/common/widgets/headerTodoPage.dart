import 'package:flutter/material.dart';
import 'package:taski/common/global_variables.dart';

class Headertodopage extends StatefulWidget {
  final int numTask;
  final String name;

  const Headertodopage(this.numTask, this.name, {super.key});

  @override
  State<Headertodopage> createState() => _HeadertodopageState();
}

class _HeadertodopageState extends State<Headertodopage> {
  late final String name;
  late final int numTask;

  @override
  void initState() {
    super.initState();
    name = widget.name;
    numTask = widget.numTask;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text('Welcome, ', style: textTodoPageWelcome),
                  Text(name, style: textTodoPageName),
                  Text('.', style: textTodoPageDot),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "You've got $numTask tasks to do today.",
                style: textTodoPageSubTitle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

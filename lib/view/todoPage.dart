import 'package:flutter/material.dart';
import 'package:taski/common/widgets/headerTodoPage.dart';
import 'package:taski/common/widgets/taskCard.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //alterar no BACKEND
  final String name = "Jhon Doe";
  final int numTask = 7;
  final tasks = [
    {
      'title': 'Design sign up flow',
      'description':
          'By the time a prospect arrives at your signup page, in most cases, they\'ve already...',
    },
    {
      'title': 'Design use case page',
      'description':
          'This page describes how your product solves real customer problems clearly.',
    },
    {
      'title': 'Create onboarding screens',
      'description':
          'The onboarding experience should be smooth and introduce the core value of your app.',
    },
    {
      'title': 'Design use case page',
      'description':
          'This page describes how your product solves real customer problems clearly.',
    },
    {
      'title': 'Create onboarding screens',
      'description':
          'The onboarding experience should be smooth and introduce the core value of your app.',
    },
    {
      'title': 'Design use case page',
      'description':
          'This page describes how your product solves real customer problems clearly.',
    },
    {
      'title': 'Create onboarding screens',
      'description':
          'The onboarding experience should be smooth and introduce the core value of your app.',
    },
    {
      'title': 'Design use case page',
      'description':
          'This page describes how your product solves real customer problems clearly.',
    },
    {
      'title': 'Create onboarding screens',
      'description':
          'The onboarding experience should be smooth and introduce the core value of your app.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Headertodopage(numTask, name), _buildTodoCards(tasks)],
      ),
    );
  }
}

Widget _buildTodoCards(tasks) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children:
          tasks.map<Widget>((task) {
            return TaskCard(
              title: task['title']!,
              description: task['description']!,
            );
          }).toList(),
    ),
  );
}

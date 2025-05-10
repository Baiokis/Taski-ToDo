import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taski/common/global_variables.dart';
import 'package:taski/common/widgets/headerTodoPage.dart';

class TodoPageEmpty extends StatelessWidget {
  const TodoPageEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = "Jhon Doe";
    final int numTask = 7;

    return Column(
      children: [Headertodopage(numTask, name), _buildEmptyState(context)],
    );
  }

  //Body
  Widget _buildEmptyState(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildIllustration(),
          _buildEmptyMessage(),
          _buildCreateTaskButton(context),
        ],
      ),
    );
  }

  Widget _buildIllustration() {
    return SvgPicture.asset(tablePicture, width: 100, height: 100);
  }

  Widget _buildEmptyMessage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text('You have no task listed.', style: textTodoPageEmptyMessage),
    );
  }

  Widget _buildCreateTaskButton(BuildContext context) {
    return SizedBox(
      width: 190,
      child: ElevatedButton(
        onPressed: () => _onCreateTaskPressed(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: color_softBlue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(plus, width: 12, height: 12),
            const SizedBox(width: 10),
            Text('Create a new task', style: textTodoPageEmptyButton),
          ],
        ),
      ),
    );
  }

  void _onCreateTaskPressed(BuildContext context) {
    // TODO: Implement task creation logic
  }
}

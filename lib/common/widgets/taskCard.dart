import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taski/common/global_variables.dart';

class TaskCard extends StatefulWidget {
  final String title;
  final String description;

  const TaskCard({super.key, required this.title, required this.description});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool _showDescription = false;
  bool _isChecked = false;

  void _toggleDescription() {
    setState(() {
      _showDescription = !_showDescription;
    });
  }

  void _toggleCheck() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color_backgroundCard,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: _toggleDescription,
            child: Row(
              children: [
                GestureDetector(
                  onTap: _toggleCheck,
                  child:
                      _isChecked
                          ? SvgPicture.asset(checkBox)
                          : SvgPicture.asset(checkBoxEmpty),
                ),
                SizedBox(width: 12),
                Expanded(child: Text(widget.title, style: textTaskCardTitle)),
                SvgPicture.asset(reticence),
              ],
            ),
          ),
          AnimatedCrossFade(
            firstChild: SizedBox.shrink(),
            secondChild: Padding(
              padding: EdgeInsets.only(top: 12, left: 36),
              child: Text(widget.description, style: textTaskCardDescription),
            ),
            crossFadeState:
                _showDescription
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
            duration: Duration(milliseconds: 300),
          ),
        ],
      ),
    );
  }
}

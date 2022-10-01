import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxChange;
  final Function() listTileDelete;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxChange,
      required this.listTileDelete});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkBoxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}

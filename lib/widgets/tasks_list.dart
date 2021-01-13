import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData
                  .tasks[index].name,
              isChecked: taskData
                  .tasks[index].isDone,
              checkboxCallBack: (checkBoxState) {
                // setState(() {
                //   Provider.of(context).tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData
              .taskCount,
        );
      },
    );
  }
}
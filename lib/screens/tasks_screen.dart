import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue[500],
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(
                      (newTitle) {
                        // setState(() {
                        //   tasks.add(Task(name: newTitle));
                        // });
                        Navigator.pop(context);
            }),
          );
        }, //onPressed
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.only(top: 100.0, left: 50.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  foregroundColor: Colors.lightBlueAccent,
                  radius: 35.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                      Icons.list,
                    size: 45.0,
                  ),
                ),
                SizedBox(height: 20.0,),
                Text('TODO List',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: TasksList(),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                )),
          ))
        ],
      ),
    );
  }
}





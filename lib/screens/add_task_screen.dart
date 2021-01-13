import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              Text('Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextField(
                style: TextStyle(
                  fontSize: 20.0
                ),
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (newValue){
                  newTaskTitle = newValue;
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FlatButton(
                    onPressed: () {
                      Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                      Navigator.pop(context);
                    },
                    child: Text('Add',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.lightBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}

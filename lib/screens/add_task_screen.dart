import 'package:flutter/material.dart';
import 'package:flutter_todoapp/model/task_data.dart';
import 'package:provider/provider.dart';
class AddTaskScreen extends StatelessWidget {
  // AddTaskScreen({this.addTask});
  // final Function addTask;

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.white,
        decoration: BoxDecoration(borderRadius:
        BorderRadius.only(topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          FlatButton(child: Text(
            'Add',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
            onPressed: (){
                  Provider.of<TaskData>(context).addTask(newTaskTitle);
                  Navigator.pop(context);
            },
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
      ),
    );
  }
}

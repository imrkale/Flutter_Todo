import 'package:flutter/material.dart';
import 'package:flutter_todoapp/model/task_data.dart';
import 'package:flutter_todoapp/widgets/tasks_list.dart';
import 'package:provider/provider.dart';
import 'add_task_screen.dart';
import 'package:flutter_todoapp/model/task.dart';
class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  // List<Task>task=[
  //   Task(name: "AB"),
  //   Task(name: "Virat"),
  //   Task(name: "Dhoni"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(context: context,isScrollControlled: true,
              builder: (context)=>SingleChildScrollView(
                  child:Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    // child: AddTaskScreen(addTask:(newTaskTitle){
                    //   // setState(() {
                    //   //   task.add(Task(name: newTaskTitle));
                    //   // });
                    //   Navigator.pop(context);
                    //
                    // }),
                    child: AddTaskScreen(),
                  )
              ));
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(child: Icon(Icons.list,color: Colors.lightBlue,),radius: 30.0,),
                  Text("Todo App",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.w700,color: Colors.white),),
                  // Text("${task.length}",style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  Text("${Provider.of<TaskData>(context).taskCount}",style: TextStyle(color: Colors.white,fontSize: 18.0),)
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                // child: TaskLists(task: task,)
                child: TaskLists(),
              ),
            )
          ],
        ),
      ),
    );
  }
}



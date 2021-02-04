import 'package:flutter/material.dart';
import 'package:flutter_todoapp/model/task_data.dart';
import 'package:flutter_todoapp/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoapp/model/task_data.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context)=>TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

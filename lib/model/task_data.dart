import 'package:flutter/foundation.dart';
import 'package:flutter_todoapp/model/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier
{
  List<Task>_task=[
    Task(name: "AB"),
    Task(name: "Virat"),
    Task(name: "Dhoni"),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_task);
  }
  int get taskCount {
    return _task.length;
  }
  void addTask(String newTaskTitle) {
    final taskk = Task(name: newTaskTitle);
    _task.add(taskk);
    notifyListeners();
  }

  void updateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}

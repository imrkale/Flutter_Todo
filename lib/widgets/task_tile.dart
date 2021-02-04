import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.isChecked,this.name,this.toggleCheckBox,this.longPress});
  final bool isChecked;
  final String name;
  final Function toggleCheckBox;
  final Function longPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(name,
        style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleCheckBox,
      ),
    );
  }
}

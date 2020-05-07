import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

final bool isChecked;
final String taskTitle;
final Function checkBoxCallback;

TaskTile({this.isChecked,this.taskTitle,this.checkBoxCallback});
//taki hum user nteraction kar sake 
//isko hum anonmyomus use karenge niche ab bina function banaye
// void checkboxCallback (bool checkboxState) {
//         setState(() {
//           isChecked= checkboxState;
//         });
// }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
                style: TextStyle(
                  decoration: isChecked ? TextDecoration.lineThrough : null
                ),
      ),
      trailing:Checkbox(
                  activeColor: Colors.lightBlueAccent,
                  value: isChecked,
                  onChanged: checkBoxCallback,
      ),
    );
  }
}


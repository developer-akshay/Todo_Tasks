import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

bool isChecked=false;

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
      title: Text('Task 2',
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null
      ),),
      trailing: TaskCheckbox(
        checkboxState : isChecked ,
        ToggleCheckboxState : (bool checkboxState) {
                    setState(() {
                      isChecked= checkboxState;
                    });
            }
        ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool checkboxState;
  final Function ToggleCheckboxState; 
  TaskCheckbox({this.checkboxState,this.ToggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: ToggleCheckboxState,
      );
  }
}
import 'package:flutter/material.dart';
import 'package:today/modals/task.dart';
import 'package:today/screens/task_tile.dart';


class TasksList extends StatefulWidget {


  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    // controller: myscrollController,
    itemBuilder: (context, index){
                      
    return TaskTile(
      taskTitle: widget.tasks[index].name ,
      isChecked: widget.tasks[index].isDone, 
      checkBoxCallback: (checkboxState) {
                  setState(() {
                    widget.tasks[index].toggleDone();
                  });
          }
      );
                      },
                      itemCount: widget.tasks.length,
                      );
  }
}
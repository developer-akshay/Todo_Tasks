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
    return DraggableScrollableSheet(
          initialChildSize: 0.35,//0.25
          minChildSize: 0.25,
          // maxChildSize: 0.5,
          builder: (BuildContext context ,myController){
          return Container(
            padding: EdgeInsets.symmetric(horizontal:20.0),
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(40),
                            topRight:Radius.circular(40),
                          ),
                        ),
            child: ListView.builder(
                    controller: myController,
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
                          ),
          );
          },
    );
  }
}
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top:60.0,left:30.0,right:30.0,bottom:30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                      ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    ),
                    SizedBox(
                      height: 10.0,
                      ),
                  Text(
                    'Todo Tasks',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
        ),
      ),
    );
  }
}
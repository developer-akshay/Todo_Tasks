import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        // padding: EdgeInsets.only(top:40.0,left:30.0,right:30.0,bottom:30.0),
              child: SafeArea(
                              child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 700,
                      child: Image.asset('assets/b_g.png'),
                    ),
                    Positioned(
                      top: 10.0 ,
                      left:0.0,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.list,
                                size: 30.0,
                                color: Colors.lightBlueAccent,
                                ),
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              ),
                    ),
                    Positioned(
                      top: 70.0 ,
                      left:0.0,
                            child: Text(
                              'Todo Tasks',
                              style: TextStyle(
                                color:Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                    ),

                  DraggableScrollableSheet(
                    initialChildSize: 0.25,
                    minChildSize: 0.1,
                    maxChildSize: 0.5,
                    builder: (BuildContext context , myscrollController){
                      return Container(
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(40),
                            topRight:Radius.circular(40),
                          ),
                        ),
                        child: ListView.builder(
                          controller: myscrollController,
                    
                          itemBuilder: (context,index){
                            return ListTile(
                              title: Text('task 1'),
                            );
                          },
                        ),
                      );
                      
                    },
                  ),
                  ],
        ),
              ),
      ),
    );
  }
}
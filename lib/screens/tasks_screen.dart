import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add_circle_outline,
          color:Colors.white,
          size: 58.0,
        ),
      ),
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
                      left:10.0,
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
                      left:10.0,
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
                    minChildSize: 0.2,
                    maxChildSize: 0.5,
                    builder: (BuildContext context ,myscrollController){
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal:20.0),
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(40),
                            topRight:Radius.circular(40),
                          ),
                        ),
                        //when you want to make list and copy title to rest of list this is used
                        // child: ListView.builder(
                          // controller: Controller,
                    
                        //   itemBuilder: (context,index){
                        //     return ListTile(
                        //       title: Text('task 1'),
                        //     );
                        //   },
                        // ),
                        child: ListView(
                            // controller: myscrollController,
                            controller: myscrollController,
                            children: <Widget>[
                              ListTile(
                                title: Text('Task 2'),
                                trailing: Checkbox(
                                  value: false,
                                  ),
                              ),
                            ],
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


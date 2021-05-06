import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/model/task.dart';
import 'package:task4/dateTimePicker.dart';
import 'package:task4/TaskContainer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> bodyWidgets = [
      Center(
       child: ListView.builder(
              itemCount: Task.tasks.length+1,
              itemBuilder: (context, int i) {
                if(i==0)
                  return Container(
                    width: 50.0,
                    height: 90.0,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "  What's up Emelie!",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            )
                        ),
                        Text(
                            "    Ready to finish some tasks?",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            )
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end:
                        Alignment(1.1, 0.0), // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Colors.blue,
                          Colors.pink
                        ], // red to yellow
                        tileMode: TileMode.repeated, // repeats the gradient over the canvas
                      ),
                    ),
                  );
                else return TaskContainer(
                  i-1,
                );
              }
        )
      ),
      Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                hintText: 'Add your new task !',
              ),
              onSubmitted: (input) => addTasks(input),
            ),
            DateTimePickerWidget(),
          ]
        ),
      ),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:
                Alignment(1.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Colors.blue,
                  Colors.pink
                ], // red to yellow
                tileMode: TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: bodyWidgets[navBarIndex]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigo[900],
          currentIndex: navBarIndex,
          onTap: (index) {
            setState(() {
              navBarIndex = index;
            });
          },
          iconSize: 40.0,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt_rounded,
                color: Colors.pink[300],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: Colors.pink[300],
              ),
              label: '',
            ),
          ],
        ),
        appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            //leading: Icon(Icons.description),
            title: Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Icon(
                      Icons.search,
                    ),
                    Icon(
                      Icons.notifications_none,
                    ),
                  ],
                )
            )
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.indigo[900],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  leading: CircleAvatar(
                      radius: 35.0,
                      backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/photos/young-woman-portrait-in-the-city-picture-id1009749608?k=6&m=1009749608&s=612x612&w=0&h=ckLkBgedCLmhG-TBvm48s6pc8kBfHt7Ppec13IgA6bo=')),
                  title: Column(
                    children: [
                      Text(
                        'Emelie Jones',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'emelie.jones@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: 60.0,
                    width: 180.0,
                    decoration: BoxDecoration(

                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end:
                          Alignment(1.1, 0.0), // 10% of the width, so there are ten blinds.
                          colors: <Color>[
                            Colors.blue,
                            Colors.pink
                          ], // red to yellow
                          tileMode: TileMode.repeated, // repeats the gradient over the canvas
                        ),

                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        //BoxShadow
                      ],
                    ),
                    child: Center(
                      child: ListTile(
                          leading: Icon(
                            CupertinoIcons.collections,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Templates',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 60.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end:
                        Alignment(1.1, 0.0), // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Colors.blue,
                          Colors.pink
                        ], // red to yellow
                        tileMode: TileMode.repeated, // repeats the gradient over the canvas
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        //BoxShadow
                      ],
                    ),
                    child: Center(
                      child: ListTile(
                          leading: Icon(
                            CupertinoIcons.circle_grid_3x3_fill,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Categories',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 60.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end:
                        Alignment(1.1, 0.0), // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Colors.blue,
                          Colors.pink
                        ], // red to yellow
                        tileMode: TileMode.repeated, // repeats the gradient over the canvas
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        //BoxShadow
                      ],
                    ),
                    child: Center(
                      child: ListTile(
                        leading: Icon(
                          CupertinoIcons.search_circle,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Analytics',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 60.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end:
                        Alignment(1.1, 0.0), // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Colors.blue,
                          Colors.pink
                        ], // red to yellow
                        tileMode: TileMode.repeated, // repeats the gradient over the canvas
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        //BoxShadow
                      ],
                    ),
                    child: Center(
                      child: ListTile(
                          leading: Icon(
                            CupertinoIcons.settings,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  addTasks(String input) {
    Task.tasks.add(input);
    TaskContainer.isDone.add(false);
    setState(() {
    });
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/model/task.dart';

class TaskContainer extends StatefulWidget {
  final int index;
  static final List<bool> isDone = [false, false, false];
  TaskContainer(this.index);
  @override
  _TaskContainerState createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.indigo[900],
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
            //BoxShadow
          ],
        ),
        child:
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    child: Text(
                      Task.tasks[widget.index],
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.indigo[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    visible: !TaskContainer.isDone[widget.index],
                    replacement: Visibility(
                      child: Text(
                        Task.tasks[widget.index],
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.indigo[900],
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      visible: TaskContainer.isDone[widget.index],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        Task.dates[widget.index],
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Task.times[widget.index],
                        style: TextStyle(
                            color: Colors.indigo[900],
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            TaskContainer.isDone[widget.index] = true;
                          });
                        },
                        child: Icon(
                          CupertinoIcons.checkmark_circle_fill,
                          color: Colors.blue,
                          size: 40.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]
        ));
  }
}
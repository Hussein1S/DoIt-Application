import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:do_it_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCalklBack;
   AddTaskScreen(this.addTaskCalklBack);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Text ('Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),),
           TextField(
            autofocus: true,
            textAlign: TextAlign.center,
             onChanged: (newText){
              newTaskTitle = newText;
             },
          ),
          TextButton(onPressed: (){
            Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
            Navigator.pop(context);
          }, child: Text("add",),
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            primary: Colors.white
          )),
        ],
      ),
    );
  }
}

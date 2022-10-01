import 'package:do_it_app/models/task.dart';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go shopping'),
    Task(name: 'Training'),
    Task(name: 'Gaming'),
    Task(name: 'Watch FootBall'),
  ];

    void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
    }

    void updateTask (Task task){
      task.doneChange();
      notifyListeners();
    }

    void deleteTask (Task task) {
      tasks.remove(task);
      notifyListeners();
    }
}
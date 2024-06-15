import 'package:flutter/material.dart';
import 'package:to_do_app/DialogWidget.dart';
import 'package:to_do_app/Task_Widget.dart';

class ToDoHome extends StatelessWidget {
  const ToDoHome({super.key});

  @override
  Widget build(BuildContext context) {
    List taskList =[
      ["task 1", false],
      ["task 2", false],
      ["task 3", false],
      ["task 4", false],
      ["task 5", false]
    ];
    void createNewTask(){
      showDialog(context: context, builder: (context){
        return DialogWidget();
      });
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255,3,65,112),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,2,75,112),
        title: const Text("Task App",
            style: TextStyle(color:Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.white,
        onPressed: (){
          createNewTask();
        },),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index){
          return TaskWidget(
            taskName:taskList[index][0],
            taskCompleted:taskList[index][1],
            onChanged: (p0){});
        },)
    );
  }
}
import 'package:flutter/material.dart';
import 'package:to_do_app/DialogWidget.dart';
import 'package:to_do_app/Task_Widget.dart';

class ToDoHome extends StatefulWidget {
  const ToDoHome({super.key});

  @override
  State<ToDoHome> createState() => _ToDoHomeState();
}

class _ToDoHomeState extends State<ToDoHome> {

   final controller = TextEditingController();
    List taskList =[
      ["task 1", false],
      ["task 2", false],
      // ["task 3", false],
      // ["task 4", false],
      // ["task 5", false]
    ];

    void taskCompleted(bool? value,int index){
      setState((){
        taskList[index][1] = !taskList[index][1];
      });
    }
    void deleteTask(int index){
      setState((){
        taskList.removeAt(index);
      });
    }
    void cancelTask(){
      Navigator.pop(context);
    }

    void saveNewTask(){
      print("save task enables");
      setState((){
        taskList.add([controller.text,false]);
        controller.clear();
      });
      Navigator.pop(context);
    }
    void createNewTask(){
      showDialog(context: context, builder: (context){
        return DialogWidget(
          controller: controller,
          onSave: (){
            print("i am running the save function");
            saveNewTask();
          },
          onCancel: (){
            cancelTask();
          }
        );
      });
    }

  @override
  Widget build(BuildContext context) {

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
        itemCount: taskList.length,
        itemBuilder: (context, index){
          return TaskWidget(
            taskName:taskList[index][0],
            taskCompleted:taskList[index][1],
            onChanged: (value) => taskCompleted(value,index),
            onDelete: (value) =>deleteTask(index));
        },)
    );
  }
}
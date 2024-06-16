import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    this.onChanged,
    this.onDelete});

    final String taskName;
    final bool taskCompleted;
    final Function(bool?)? onChanged;
    final Function(BuildContext)? onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.all(10),
        child: Slidable(
          endActionPane: ActionPane(
            motion:StretchMotion(),
            children:[
              SlidableAction(
                onPressed: onDelete,
                icon:Icons.delete,
                backgroundColor: Colors.red,
                borderRadius:BorderRadius.circular(10))
            ]
          ),
        child:  Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
        
          )
        ),
        child: ListTile(
        leading: Checkbox(
          value: taskCompleted,
          onChanged: onChanged
        ),
        title: Text(taskName,
        style: const TextStyle(color:Colors.blue),
      )
      )
        )
        )
      );
  }
}
import 'package:flutter/material.dart';
import 'package:to_do_app/DialogButton.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
    required this.onSave,
    required this.controller,
    required this.onCancel});

  final VoidCallback onSave; 
  final VoidCallback onCancel;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      content: Container(
        height: 120,
        child:  Column(
          children:[
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:"Create a task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                DialogButton(
                  text: "save",
                  onPressed: onSave),
                SizedBox(width:10),
                DialogButton(
                  text: "Cancel",
                  onPressed: onCancel)
              ]
            )
          ]
        ),
      )
    );
  }
}
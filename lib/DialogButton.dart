import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({
      super.key,
      required this.text,
      this.onPressed,
    });
    final String text;
    final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
      color: Theme.of(context).primaryColor,
      child:  Text(text)
    );
  }
}
import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({
      super.key,
      required this.text,
      required this.onPressed,
    });
    final String text;
    final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child:  Text(text)
    );
  }
}
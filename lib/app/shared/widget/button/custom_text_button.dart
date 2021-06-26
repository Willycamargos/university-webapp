import 'package:flutter/material.dart';


class CustomTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color? textColor;

  CustomTextButton({
    required this.text,
    required this.onPressed,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

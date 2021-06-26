import 'package:flutter/material.dart';

class ObscureTextSuffixWidget extends StatelessWidget {
  final Function() onTap;
  final bool visibility;
  final Color color;

  ObscureTextSuffixWidget({
    required this.onTap,
    required this.visibility,
    this.color: Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        visibility ? Icons.visibility_off : Icons.visibility,
        color: color,
        size: 20,
      ),
      onTap: onTap,
    );
  }
}

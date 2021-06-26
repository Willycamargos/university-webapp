import 'package:flutter/material.dart';

OutlineInputBorder buildOutlineInputBorder(Color accentColor) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: accentColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );
}

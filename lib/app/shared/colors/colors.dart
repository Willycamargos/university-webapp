import 'package:flutter/material.dart';

Color primaryColor = Color.fromRGBO(255, 166, 0, 1);
Color primaryColorLight = Color.fromRGBO(255, 166, 0, .6);
Color accentColor = Color.fromRGBO(0, 0, 0, 1);
Color primaryColorDisabledLight = Color.fromRGBO(255, 166, 0, .1);
Color primaryColorDisabled = Color.fromRGBO(255, 166, 0, .3);

const Map<int, Color> primaryColors = {
  50: Color.fromRGBO(255, 166, 0, .01),
  100: Color.fromRGBO(255, 166, 0, .2),
  200: Color.fromRGBO(255, 166, 0, .3),
  300: Color.fromRGBO(255, 166, 0, .4),
  400: Color.fromRGBO(255, 166, 0, .5),
  500: Color.fromRGBO(255, 166, 0, .6),
  600: Color.fromRGBO(255, 166, 0, .7),
  700: Color.fromRGBO(255, 166, 0, .8),
  800: Color.fromRGBO(255, 166, 0, .9),
  900: Color.fromRGBO(255, 166, 0, 1),
};

Color? getColorDisablePrimary(Set<MaterialState> states) {
  return primaryColorDisabledLight;
}

Color? getColorPrimary(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return primaryColor;
  }
  return primaryColor;
}

Color? getColorWhite(Set<MaterialState> states) {
  return Colors.white;
}

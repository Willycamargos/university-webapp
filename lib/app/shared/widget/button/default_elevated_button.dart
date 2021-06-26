import 'package:flutter/material.dart';
import 'package:university_webapp/app/shared/colors/colors.dart';
import 'package:university_webapp/app/shared/widget/container/sized_container.dart';

const _disabledColor = Color.fromRGBO(255, 166, 0, .3);

class DefaultElevatedButton extends StatelessWidget {
  final Widget child;
  final bool enable;
  final Function()? onTap;
  final Color disabledColor;
  final Color? backgroundColor;
  final double borderRadius;
  final double height;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  DefaultElevatedButton({
    required this.child,
    this.onTap,
    this.enable = true,
    this.disabledColor = _disabledColor,
    this.backgroundColor,
    this.borderRadius = 25,
    this.height = 60,
    this.margin,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return SizedContainer(
      height: height,
      padding: padding ?? EdgeInsets.only(left: 0, right: 0, top: 16),
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith(getColorWhite),
          backgroundColor: MaterialStateProperty.resolveWith(
              enable ? getColorPrimary : getColorDisablePrimary),
        ),
        onPressed: onTap,
        child: Container(
          width: double.infinity,
          child: Center(child: child),
        ),
      ),
    );
  }
}

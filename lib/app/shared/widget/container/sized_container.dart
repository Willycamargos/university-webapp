import 'package:flutter/material.dart';

class SizedContainer extends StatelessWidget {
  final Widget child;
  final Alignment? alignment;
  final EdgeInsets? padding;
  final Color? color;
  final BoxDecoration? decoration;
  final Decoration? foregroundDecoration;
  final double maxWidth;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;

  SizedContainer({
    Key? key,
    required this.child,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.maxWidth = 550,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var width = maxWidth;

    if (screenSize.width < maxWidth) {
      width = screenSize.width;
    }
    return Container(
      child: child,
      alignment: alignment,
      margin: margin,
      padding: padding ?? EdgeInsets.only(left: 16, right: 16),
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
    );
  }
}

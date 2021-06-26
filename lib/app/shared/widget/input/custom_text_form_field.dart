import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:university_webapp/app/style/input_decoration_border.dart';

class CustomTextFormField extends StatelessWidget {
  static final Color disabledColor = Colors.grey[500]!;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? label;
  final FocusNode? focusNode;
  final IconData? iconData;
  final Color? disabledBorderColor;
  final TextCapitalization? textCapitalization;
  final TextInputAction? textInputAction;
  final Function(String)? onChange;
  final Function()? onTap;
  final Widget? suffix;
  final String? hintText;
  final EdgeInsets? padding;
  final int? maxLength;
  final int minimumLine;
  final int maxLines;
  final bool enable;
  final bool readOnly;
  final bool obscureText;
  final Color labelColor;
  final Color borderColor;

  CustomTextFormField({
    Key? key,
    this.keyboardType,
    this.controller,
    this.label,
    this.iconData,
    this.onTap,
    this.readOnly: false,
    this.onChange,
    this.focusNode,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction = TextInputAction.done,
    this.maxLines: 1,
    this.minimumLine: 1,
    this.maxLength,
    this.enable: true,
    this.obscureText: false,
    this.labelColor: Colors.black,
    this.borderColor: Colors.black,
    this.disabledBorderColor,
    this.suffix,
    this.hintText,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.only(top: 16),
      child: TextFormField(
        controller: controller,
        onTap: onTap,
        minLines: minimumLine,
        cursorColor: labelColor,
        textCapitalization: textCapitalization!,
        onChanged: (value) => onChange?.call(value) ?? (value.trim()),
        focusNode: focusNode,
        readOnly: readOnly,
        maxLines: maxLines,
        textInputAction: textInputAction,
        onEditingComplete: () => FocusScope.of(context).nextFocus(),
        enabled: enable,
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: obscureText,
        style: TextStyle(color: labelColor),
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
        ],
        decoration: InputDecoration(
          suffixIcon: suffix,
          focusColor: borderColor,
          contentPadding: EdgeInsets.all(16),
          focusedBorder: buildOutlineInputBorder(borderColor),
          enabledBorder: buildOutlineInputBorder(borderColor),
          disabledBorder: buildOutlineInputBorder(getDisabledColor),
          errorBorder: buildOutlineInputBorder(Colors.red),
          hintText: hintText,
          border: buildOutlineInputBorder(borderColor),
          prefixIcon: iconData != null
              ? Container(
                  child: Icon(
                    iconData,
                    color: enable ? borderColor : getDisabledColor,
                  ),
                )
              : null,
          labelText: label,
          labelStyle: TextStyle(color: enable ? borderColor : getDisabledColor),
        ),
      ),
    );
  }

  Color get getDisabledColor =>
      disabledBorderColor != null ? disabledBorderColor! : Colors.grey[500]!;
}

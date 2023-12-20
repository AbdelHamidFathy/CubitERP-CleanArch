// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.maxLines,
    this.textOverflow,
    this.textAlign,
    this.decoration,
  }) : super(key: key);

  String text;
  double fontSize;
  Color? fontColor;
  FontWeight? fontWeight;
  int? maxLines;
  TextOverflow? textOverflow;
  TextAlign? textAlign;
  TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: decoration,
        fontSize: fontSize,
        color: fontColor ?? Colors.black,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
    );
  }
}

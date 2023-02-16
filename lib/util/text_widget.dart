import 'package:flutter/material.dart';

import 'font_string.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double textSize;
  final EdgeInsets padding;
  final Color color;
  final Color backgroundColor;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final String fontFamily;
  final TextDecoration textDecoration;
  final TextStyle textStyle;
  final int maxline;

  const TextWidget(
      {super.key,  required this.text,
        this.textSize = 12,
        this.padding = const EdgeInsets.all(0.0),
        this.color = Colors.black,
        this.fontWeight = FontWeight.normal,
        this.backgroundColor = Colors.transparent,
        this.textAlign = TextAlign.start,
        this.fontFamily = FontStyles.fontNamePoppins,
        required this.textStyle,
        this.textDecoration = TextDecoration.none,
      this.maxline = 2});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: padding,
      child: Text(
        maxLines:maxline ,
        text,
        style: textStyle == null
            ? TextStyle(
          decoration: textDecoration,
          fontSize: textSize,
          color: color,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
        )
            : textStyle,
        textAlign: textAlign,
      ),
    );
  }
}
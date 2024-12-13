import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
      {super.key,
        required this.text,
         this.fontSize,
         this.fontWeight,
        this.textAlign,
         this.color = Colors.black,
        this.maxLines, this.overflow,
      });
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final Color color ;
  final TextAlign? textAlign;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          fontFamily: "Roboto",
      ),
      overflow: overflow ,
    );
  }
}

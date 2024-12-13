import 'package:flutter/material.dart';
import 'package:resumemaker/config/res/Widgets/app_text.dart';

import '../Constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.icon,
    required this.press,
    this.height,
    this.width,
    this.radius,
    this.bdColor,
    this.iconColor,
    this.textSize,
    this.bdRadius,
    this.bgColor,
    this.textColor,
    this.gradientColors,  this.fontWeight,
  });
  final String? title;
  final FontWeight? fontWeight;
  final IconData? icon;
  final Function() press;
  final double? height;
  final double? width;
  final double? radius;
  final Color? bdColor, bgColor;
  final Color? iconColor,textColor;
  final double? textSize;
  final double? bdRadius;
  final LinearGradient? gradientColors;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1.0),
        width: width ?? double.infinity,
        alignment: Alignment.center,
        height: height ?? 50.0,
        decoration: BoxDecoration(
            color: bgColor ?? primaryColor,
            border: Border.all(
              color: bdColor ?? Colors.transparent
            ),
            borderRadius: BorderRadius.circular(radius ?? 10.0),
            gradient: gradientColors,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                padding: EdgeInsets.only(right: title != null ? 8.0 : 0.0),
                child: Icon(
                  icon,
                  color: iconColor ?? Colors.white,
                ),
              ),
            if (title != null)
              AppText(text:
                title!,
                    color: textColor ?? Colors.white,fontSize: textSize ?? 12, fontWeight: fontWeight ?? FontWeight.w500),
          ],
        ),
      ),
    );
  }
}
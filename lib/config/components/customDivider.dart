import 'package:flutter/material.dart';
import 'package:resumemaker/config/res/Widgets/app_text_field.dart';
import 'package:sizer/sizer.dart';

import '../res/Constants/app_colors.dart';

class CustomDivider extends StatelessWidget {
  final Color? color;
  final double? width;
  final AlignmentGeometry? alignment;
  const CustomDivider({super.key, this.color, this.width, this.alignment});

  @override
  Widget build(BuildContext context) {
    return   Align(
      alignment: alignment ?? Alignment.center,
      child: SizedBox(
        width: width ?? 80.w,
        child: Divider(
          thickness: 3,
          color: color ?? greyColor,
        ),
      ),
    );
  }
}

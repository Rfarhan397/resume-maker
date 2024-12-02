import 'package:flutter/material.dart';

import '../../res/Constants/app_colors.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? buttonColor;
   const AppBackButton({
     super.key,
     this.onTap,
     this.buttonColor = whiteColor,
   });

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          decoration:  BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Icon(Icons.arrow_back_ios, color: buttonColor, size: 18)),
        ),
      );
    }
}

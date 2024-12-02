import 'package:flutter/material.dart';
import '../../../config/res/Constants/app_colors.dart';
import '../../../config/res/Widgets/app_text.dart';



class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bgColor,
        surfaceTintColor: bgColor,
        title: const AppText(
            text: "Settings",
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: textColor),
      ),
      backgroundColor: bgColor,
    );
  }
}

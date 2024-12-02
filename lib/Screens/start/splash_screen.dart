import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../config/res/Constants/app_assets.dart';
import '../../config/res/Constants/app_colors.dart';
import '../../config/res/Widgets/app_text.dart';
import '../../config/res/routes/routes_name.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesName.onboard);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(AppAssets.splashImage,height: 20.h,),
            const SizedBox(height: 10,),
            const AppText(
                text: "CV Maker", fontSize: 32,
                fontWeight: FontWeight.bold,
                color: textColor),
            const SizedBox(height: 10,),
            const AppText(
                text: "More than an app, it’s your career wingman.", fontSize: 14,
                fontWeight: FontWeight.w300,
                color: textColor),
            const Spacer(),
            const AppText(
                text: "This action can contain ads...", fontSize: 14,
                fontWeight: FontWeight.w300,
                color: textColor),
            const SizedBox(height: 10,),
            SizedBox(
                width: 40.w,
                child: const LinearProgressIndicator()),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}

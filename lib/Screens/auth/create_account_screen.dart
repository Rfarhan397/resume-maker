
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../config/res/Constants/app_assets.dart';
import '../../config/res/Constants/app_colors.dart';
import '../../config/res/Widgets/app_button.dart';
import '../../config/res/Widgets/app_text.dart';
import '../../config/res/routes/routes_name.dart';



class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Stack(
          // alignment: Alignment.center,
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 74.w,
                        child: Image.asset(
                          AppAssets.frame_1,
                          fit: BoxFit.cover,
                          color: primaryColor,
                        )),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: AppButton(
                        title: "Skip",
                        height: 40,
                        radius: 25,
                        width: 20.w,
                        press: () {
                          Navigator.pushNamed(context, RoutesName.bottomNavBarScreen);
                      },),
                    ),
                    const SizedBox(width: 20,),
                  ],
                ),
                const Spacer(),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      AppAssets.frame_2,
                      height: 20.h,
                      color: primaryColor,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.sp,horizontal: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                      text: "Create an account", fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                  const AppText(
                      text: "Ditch details, login your way! Join with Google or "
                          "connect your social account.", fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: textColor, maxLines: 2,),
                  const Row(
                    children: [
                      Icon(Icons.star, color: primaryColor,),
                      SizedBox(width: 5,),
                      AppText(
                        text: "Easy & secure.", fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: textColor, maxLines: 2,),
                    ],
                  ),
                  const Spacer(),
                  Center(
                      child: Image.asset(
                        AppAssets.accountImage,
                        height: 32.h,
                      )),
                  const Spacer(),
                  AppButton(
                    title: "Continue with Google",
                    press: () {
                      Navigator.pushNamed(context, RoutesName.bottomNavBarScreen);
                  },),
                  const SizedBox(height: 10,),
                  const Center(
                    child: AppText(
                      text: "Continue as guest", fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: textColor, maxLines: 2,),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

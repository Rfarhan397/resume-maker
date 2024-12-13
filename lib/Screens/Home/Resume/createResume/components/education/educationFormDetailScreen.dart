import 'package:flutter/material.dart';
import 'package:resumemaker/config/res/Constants/app_colors.dart';
import 'package:resumemaker/config/res/Widgets/app_button.dart';
import 'package:resumemaker/config/res/Widgets/app_text_field.dart';
import 'package:sizer/sizer.dart';


class EducationFormDetailScreen extends StatelessWidget {
  const EducationFormDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppTextFieldWithText(
                text: 'Degree and Course',
                  hintText: '',),
              SizedBox(height: 0.5.h,),
              const AppTextFieldWithText(
                text: 'Institute',
                hintText: '',),
              SizedBox(height: 0.5.h,),
              const Row(
                children: [
                  Expanded(
                    child:  AppTextFieldWithText(
                      text: 'Start Date',
                      hintText: '',),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child:  AppTextFieldWithText(
                      text: 'End Date',
                      hintText: '',),
                  ),
                ],
              ),
              const AppTextFieldWithText(
                text: 'End Date',
                maxLines: 5,
                hintText: '',),
              const SizedBox(height: 16.0),
            ],
          ),
          SizedBox(height: 2.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButton(
                radius: 10.w,
                width: 35.w,
                height:4.5.h,
                textSize: 14,
                bgColor: whiteColor,
                bdColor: primaryColor,
                textColor: primaryColor,
                title: 'Cancel', press: () {

              },),
              AppButton(
                radius: 10.w,
                width: 35.w,
                height:4.5.h,
                textSize: 14,
                title: 'Add', press: () {

              },),

            ],
          ),
        ],
      ),
    );
  }
}



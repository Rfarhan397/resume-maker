import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resumemaker/config/components/appBackButton/appBackButtonWidget.dart';
import 'package:resumemaker/config/res/Constants/app_colors.dart';
import 'package:resumemaker/config/res/Widgets/app_button.dart';
import 'package:resumemaker/config/res/Widgets/app_text.dart';
import 'package:resumemaker/config/res/Widgets/app_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/res/routes/routes_name.dart';

class ResumeDetailScreen extends StatelessWidget {

  const ResumeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final checkedItems = ModalRoute.of(context)?.settings.arguments as List<Map<String, dynamic>>? ?? [];

// Debugging: Check the contents of checkedItems
    print(checkedItems); // This will print the received data in the console

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const AppText(
          text: "Create Resume",
          fontSize: 14,
          color: Colors.white,
        ),
        leading: const AppBackButton(),
        actions: [
          Row(
            children: [
              Column(
                children: [
                  const Icon(Icons.visibility, size: 16,color: Colors.white),
                  SizedBox(height: 0.5.w),
                  const AppText(
                    text: "Preview",
                    color: whiteColor,
                  ),
                ],
              ),
              SizedBox(width: 3.w),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                ),
                child: Row(
                  children: [
                    Icon(Icons.monetization_on,
                        color: primaryColor, size: 16),
                     SizedBox(width: 1.w),
                    const AppText(text: "0",),

                  ],
                ),
              ),
              SizedBox(width: 2.w),

            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tab Menu
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 10.h,
                  width: 60.w,
                  color: Colors.red,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: checkedItems.isEmpty ? 0 : checkedItems.length,
                    itemBuilder: (context, index) {
                      final item = checkedItems[index];
                      return _tabItem(Icons.person, item['title'], isActive: true);
                    },
                  ),
                )

                // _tabItem(Icons.person, "Personal Details", isActive: true),
                // _tabItem(Icons.school, "Education"),
                // _tabItem(Icons.work, "Experience"),
                // _tabItem(Icons.lightbulb, "Skills"),
              ],
            ),
            SizedBox(height: 3.h),
            // Form Card
            Container(
              height: 60.h,
              padding: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Profile Picture
                    Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.grey.shade300,
                            child: const Icon(Icons.person, size: 50),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(1.w),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.edit, size: 14, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.h),
                    // Form Fields
                    _formField("Name", "name"),
                    _formField("Phone Number", "+9200 0000000 0"),
                    _formField("Email", "emaple@gmil.com"),
                    _formField("Address", "Write address here"),
                    _formField("Gender", "Select Gender"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h),
            // Next Button
            Center(
              child: AppButton(title: 'Next (1/6)',
                height: 40,
                width: 60.w,
                press: () {
                  Navigator.pushNamed(
                    context,
                    RoutesName.educationForm,);
              },),
            ),

          ],
        ),
      ),
    );
  }

  // Widget for Tab Items
  Widget _tabItem(IconData icon, String label, {bool isActive = false}) {
    return Column(
      children: [
        Icon(icon, color: isActive ? Colors.amber : Colors.grey),
        SizedBox(height: 1.h),
        AppText(text:
          label,
            color: isActive ? Colors.amber : Colors.red,
            fontSize: 10.sp,
        ),
      ],
    );
  }

  // Widget for Form Fields
  Widget _formField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: label),
        SizedBox(height: 1.h),
        AppTextField(hintText: hint,),
        SizedBox(height: 2.h),
      ],
    );
  }
}

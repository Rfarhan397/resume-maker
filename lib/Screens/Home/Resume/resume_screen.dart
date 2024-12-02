import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../config/res/Constants/app_colors.dart';
import '../../../config/res/Constants/app_icons.dart';
import '../../../config/res/Widgets/app_text.dart';
import 'components/resume_card.dart';



class ResumeScreen extends StatelessWidget {
  ResumeScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double padding = 10.0;
    log("rebuild1");
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: bgColor,
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: bgColor,
          surfaceTintColor: bgColor,
          width: 100.w,
          shape: const RoundedRectangleBorder(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: bgColor,
        surfaceTintColor: bgColor,
        leading: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Container(
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.all(12),
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle
              ),
              child: Image.asset(AppIcons.menu,)),
        ),
        title: const AppText(
            text: "CV Maker",
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: textColor
        ),
        actions: [
          Image.asset(AppIcons.folder,height: 3.5.h,),
          const SizedBox(width: 20,),
          Image.asset(AppIcons.gift,height: 3.5.h,),
          const SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                AppText(
                    text: "Welcome Onboard!", fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: textColor
                ),
                AppText(
                  text: "Land your dream job! Create a standout resume that "
                      "gets you noticed!", fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: textColor,maxLines: 2,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    AppText(
                        text: "Basic Resume",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: textColor
                    ),
                    Spacer(),
                    AppText(
                        text: "View All",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightBlueAccent
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 20.h,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: padding),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ResumeCard();
              },),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                AppText(
                    text: "Professional Resume",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: textColor),
                Spacer(),
                AppText(
                    text: "View All",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.lightBlueAccent
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 20.h,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: padding),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ResumeCard();
              },),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                AppText(
                    text: "Premium Resume",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: textColor
                ),
                Spacer(),
                AppText(
                    text: "View All",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.lightBlueAccent
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 20.h,
            child: ListView.builder(
              padding: EdgeInsets.only(left: padding),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ResumeCard();
              },),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {

        },
        child: const Icon(
          Icons.add_rounded,
          color: bgColor,
          size: 35,
        ),
      ),
    );
  }
}

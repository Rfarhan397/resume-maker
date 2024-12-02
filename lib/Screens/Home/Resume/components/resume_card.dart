import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../config/res/Constants/app_colors.dart';
import '../../../../config/res/routes/routes_name.dart';


class ResumeCard extends StatelessWidget {
  const ResumeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesName.createResume);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 20.h,
        width: 130,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}

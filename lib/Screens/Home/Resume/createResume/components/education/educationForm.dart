import 'package:flutter/material.dart';
import 'package:resumemaker/config/components/infoCard.dart';
import 'package:resumemaker/config/res/Widgets/app_button.dart';
import 'package:resumemaker/config/res/routes/routes_name.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../config/components/customDivider.dart';
import '../../../../../../config/components/educationCard.dart';

class EducationForm extends StatelessWidget {
  const EducationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppButton(
          title: "Next",
          width: 25.w,
          height: 40,
          radius: 20,
          press: () {
            Navigator.pushNamed(context, RoutesName.jobTitle);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: AppButton(
              height: 4.5.h,
              radius: 20.w,
              textSize: 16,
              width: 60.w,
              title: 'Add Education',
              press: () {
                Navigator.pushNamed(context, RoutesName.educationFormDetail);
              },
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          const CustomDivider(),
          SizedBox(
            height: 3.h,
          ),
          const InfoCard(
              title: 'Things to Remember',
          infoTexts: [
            'Don’t overwhelm your resume. List only your most relevant and impressive awards.',
            'Keep the descriptions concise and avoid redundancy.',
            'Tailor your approach to each job you apply for.',
          ],

          ),
          EducationCard(
            institute: 'GC University Faisalabad',
            degree: 'Bachelor in Computer Science',
            startDate: '30/02/2023',
            endDate: '30/02/2023',
            description: 'Hello Everyone!',
            onEdit: () {
              // Handle edit action
            },
            onDelete: () {
              // Handle delete action
            },
          ),

        ],
      ),
    );
  }
}

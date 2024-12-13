import 'package:flutter/material.dart';
import 'package:resumemaker/config/components/customDivider.dart';
import 'package:resumemaker/config/components/infoCard.dart';
import 'package:resumemaker/config/res/Widgets/app_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../config/res/Widgets/app_button.dart';
import '../../../../../../config/res/routes/routes_name.dart';

class JobTitle extends StatelessWidget {
  const JobTitle({super.key});

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
            Navigator.pushNamed(context, RoutesName.careerObjective);
          },
        ),
      ),
      body: Column(
        children: [
          AppTextFieldWithText(hintText: '', text: 'Job Title'),
          SizedBox(height: 3.h,),
          AppTextFieldWithText(hintText: 'Type...',maxLength: 150, text: 'Job Summary',maxLines: 5,),
          SizedBox(height: 2.h,),
          CustomDivider(),
          SizedBox(height: 2.h,),
          InfoCard(title: 'Things to Remember',
              infoTexts: [
                'Keep it concise and impactful, ideally within 3-4 lines.',
                'Quantify your achievements using numbers and specific examples.',
                'Use strong action verbs to showcase yourskills and contributions.',
                'Tailor the summary to the specific job you are applying for.',
              ])
        ],
      ),
    );
  }
}

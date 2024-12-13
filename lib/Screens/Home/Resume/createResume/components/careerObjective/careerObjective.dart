import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../config/components/customDivider.dart';
import '../../../../../../config/components/infoCard.dart';
import '../../../../../../config/res/Widgets/app_button.dart';
import '../../../../../../config/res/Widgets/app_text_field.dart';
import '../../../../../../config/res/routes/routes_name.dart';

class CareerObjective extends StatelessWidget {
  const CareerObjective({super.key});

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
            // Navigator.pushNamed(context, RoutesName.careerObjective);
          },
        ),
      ),
      body: Column(
        children: [
          const AppTextFieldWithText(hintText: 'Type...',maxLength: 200, text: 'Career Objective',maxLines: 5,),
          SizedBox(height: 2.h,),
          const CustomDivider(),
          SizedBox(height: 2.h,),
          const InfoCard(title: 'Things to Remember',
              infoTexts: [
                'Remember to personalize your objective base on your specific skills, experience, and career aspirations.'
              ]),
          SizedBox(height: 2.h,),
          const InfoCard(title: 'Here are some additional tips:',
              infoTexts: [
                'Keep it concise and impactful, ideally within 3-4 lines.',
                'Quantify your achievements using numbers and specific examples.',
                'Use strong action verbs to showcase yourskills and contributions.',
                'Tailor the summary to the specific job you are applying for.',
              ]),
        ],
      ),
    );
  }
}

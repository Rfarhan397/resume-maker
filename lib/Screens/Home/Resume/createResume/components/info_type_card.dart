import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../config/res/Constants/app_colors.dart';
import '../../../../../config/res/Widgets/app_text.dart';

class InfoTypeCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isRequired;
  final bool isChecked;
  final VoidCallback onChecked;

  const InfoTypeCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.isRequired,
    required this.isChecked,
    required this.onChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Checkbox
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          value: isChecked,
          onChanged: (_) => onChecked(),
        ),
        // Expanded Container for Content
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            margin: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
            decoration: BoxDecoration(
              color: subTitleColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AppText(
                      text: title,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    if (isRequired)
                      const Padding(
                        padding: EdgeInsets.only(left: 3,bottom: 8),
                        child: Icon(
                          color: Colors.red,
                          Icons.star_rate_rounded,
                          size: 14,
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 0.5.h),
                AppText(
                  text: subTitle,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

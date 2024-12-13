import 'package:flutter/material.dart';

import '../res/Constants/app_colors.dart';
import '../res/Widgets/app_text.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final List<String> infoTexts;

  const InfoCard({
    super.key,
    required this.title,
    required this.infoTexts,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff9FD2E8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: title,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: primaryColor,
                ),
                const Icon(
                  Icons.lightbulb_sharp,
                  color: primaryColor,
                  size: 22,
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            ...infoTexts.map((text) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '• ',
                    style: TextStyle(fontSize: 16),
                  ),
                  Expanded(
                    child: AppText(
                      text: text,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:resumemaker/config/res/Constants/app_assets.dart';
import 'package:resumemaker/config/res/Constants/app_colors.dart';
import 'package:resumemaker/config/res/Widgets/app_text.dart';

import 'customImageIcon.dart';

class EducationCard extends StatelessWidget {
  final String institute;
  final String degree;
  final String startDate;
  final String endDate;
  final String description;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  final ValueNotifier<bool> isExpanded = ValueNotifier<bool>(false);

  EducationCard({
    Key? key,
    required this.institute,
    required this.degree,
    required this.startDate,
    required this.endDate,
    required this.description,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          // Header Row
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(text: institute, fontWeight: FontWeight.w600),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageIcon(
                      image: AppAssets.edit,
                      onTap: onEdit,
                    ),
                    CustomImageIcon(
                      image: AppAssets.delete,
                      onTap: onDelete,
                    ),
                    ValueListenableBuilder<bool>(
                      valueListenable: isExpanded,
                      builder: (context, value, child) {
                        return GestureDetector(
                          onTap: () {
                            isExpanded.value = !value;
                          },
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: greyColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              value
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Expanded Content
          ValueListenableBuilder<bool>(
            valueListenable: isExpanded,
            builder: (context, value, child) {
              return value
                  ? Container(
                      color: greyColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInfoRow('Degree', degree),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              _buildInfoColumn('Start Date', startDate),
                              const SizedBox(width: 16.0),
                              _buildInfoColumn('End Date', endDate),
                            ],
                          ),
                          const SizedBox(height: 4.0),
                          _buildInfoColumn('Description', description),
                        ],
                      ),
                    )
                  : const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: '$title: ', fontWeight: FontWeight.w600),
        Expanded(
          child: AppText(
            text: value,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoColumn(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: '$title: ', fontWeight: FontWeight.w600),
        AppText(
          text: value,
          fontWeight: FontWeight.w100,
          maxLines: 2,
        ),
      ],
    );
  }
}

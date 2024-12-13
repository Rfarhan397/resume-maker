import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/components/appBackButton/appBackButtonWidget.dart';
import '../../../../config/res/Constants/app_colors.dart';
import '../../../../config/res/Widgets/app_button.dart';
import '../../../../config/res/Widgets/app_text.dart';
import '../../../../config/res/routes/routes_name.dart';
import '../../../../provider/resume/resumeProvider.dart';
import 'components/info_type_card.dart';

class CreateResumeScreen extends StatelessWidget {
  const CreateResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final resumeProvider = Provider.of<ResumeProvider>(context);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: _buildAppBar(context, resumeProvider),
      body: _buildBody(resumeProvider),
    );
  }

  AppBar _buildAppBar(BuildContext context, ResumeProvider resumeProvider) {
    return AppBar(
      backgroundColor: bgColor,
      surfaceTintColor: bgColor,
      leading: AppBackButton(),
      actions: [
        _buildNextButton(context, resumeProvider),
        const SizedBox(width: 10),
      ],
    );
  }



  Widget _buildNextButton(BuildContext context, ResumeProvider resumeProvider) {
    return AppButton(
      title: "Next",
      width: 25.w,
      height: 40,
      radius: 20,
      press: () {
        navigateToNextScreen(
          context,
          resumeProvider,
        );
      },
    );
  }
  void navigateToNextScreen(BuildContext context, ResumeProvider resumeProvider) {
    final checkedItems = resumeProvider.infoItems
        .where((item) => item["isChecked"] == true)
        .toList();

    Navigator.pushNamed(
      context,
      RoutesName.resumeDetailScreen,
      arguments: checkedItems,
    );
  }



  Widget _buildBody(ResumeProvider resumeProvider) {
    final completedSections = resumeProvider.completedSectionsCount;
    final totalSections = resumeProvider.infoItems.length;

    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(completedSections, totalSections),
           SizedBox(height: 3.h),
          _buildInfoList(resumeProvider),
        ],
      ),
    );
  }

  Widget _buildHeader(int completedSections, int totalSections) {
    return ListTile(
      title: const AppText(
        text: "Create Resume",
        fontSize: 21,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      subtitle: Row(
        children: const [
          Icon(Icons.search, color: darkGreyColor),
          AppText(
            text: " Pick your sections, fill in the details! ",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: textColor,
          ),
        ],
      ),
      trailing: AppText(
        text: "$completedSections/$totalSections",
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );
  }

  Widget _buildInfoList(ResumeProvider resumeProvider) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: resumeProvider.infoItems.length,
      itemBuilder: (context, index) {
        final item = resumeProvider.infoItems[index];
        return InfoTypeCard(
          title: item["title"],
          subTitle: item["subTitle"],
          isRequired: item["isRequired"],
          isChecked: item["isChecked"],
          onChecked: () => resumeProvider.toggleCheckbox(index),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../config/res/Constants/app_colors.dart';
import '../../../config/res/routes/routes_name.dart';
import '../../config/res/Constants/app_assets.dart';
import '../../config/res/Widgets/app_button.dart';
import '../../config/res/Widgets/app_text.dart';
import '../../config/res/Widgets/curved_top_painter.dart';
import '../../provider/onboarding/onboarding.dart';
import '../../config/res/Widgets/dots_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  final List<String> onboardingPages = [
    AppAssets.onboard1,
    AppAssets.onboard2,
    AppAssets.onboard3,
  ];

  final List<String> onboardingTexts = [
    "Welcome to our app! Discover amazing\nfeatures.",
    "Connect with your friends and\nfamily effortlessly.",
    "Stay organized and never miss\nout on important updates.",
  ];

  final List<String> onboardingHeads = [
    "Easy to Export",
    "Well designed template",
    "Easy to Edit",
  ];

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnboardingProvider(),
      child: Scaffold(
        backgroundColor: bgColor,
        body: Consumer<OnboardingProvider>(
          builder: (context, onboardingProvider, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      CustomPaint(
                        size: Size(100.w, 60.h),
                        painter: CurvedTopPainter(),
                      ),
                      PageView.builder(
                        controller: _pageController,
                        onPageChanged: (index) {
                          onboardingProvider.updatePage(index);
                        },
                        itemCount: onboardingPages.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Center(
                              child: Image.asset(
                                onboardingPages[index],
                                height: 50.h,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                AppText(
                    text: onboardingHeads[onboardingProvider.currentPage],
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: textColor),
                const SizedBox(height: 15),
                AppText(
                  text: onboardingTexts[onboardingProvider.currentPage],
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: subTitleColor,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                const SizedBox(height: 35),
                DotsIndicator(
                  dotsCount: onboardingPages.length,
                  currentIndex: onboardingProvider.currentPage,
                ),
                const SizedBox(height: 25),
                AppButton(
                  width: 90.w,
                  title: "Get Started",
                  press: () {
                    if (onboardingProvider.currentPage < onboardingPages.length - 1) {
                      onboardingProvider.nextPage();
                      _pageController.animateToPage(
                        onboardingProvider.currentPage,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.pushNamed(context, RoutesName.crateAccountScreen);
                    }
                  },
                ),
                const SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}

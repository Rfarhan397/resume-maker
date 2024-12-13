import 'package:flutter/material.dart';
import '../../../Screens/BottomNavBar/bottom_nav_bar_screen.dart';
import '../../../Screens/Home/Resume/createResume/components/careerObjective/careerObjective.dart';
import '../../../Screens/Home/Resume/createResume/components/education/educationForm.dart';
import '../../../Screens/Home/Resume/createResume/components/education/educationFormDetailScreen.dart';
import '../../../Screens/Home/Resume/createResume/components/jobTitle/jobTitle.dart';
import '../../../Screens/Home/Resume/createResume/createResumeScreen.dart';
import '../../../Screens/Home/Resume/createResume/resumeDetailScreen.dart';
import '../../../Screens/Home/Resume/resume_screen.dart';
import '../../../Screens/Home/SettingScreen/setting_screen.dart';
import '../../../Screens/NoFoundScreen/no_found_screen.dart';
import '../../../Screens/start/onboarding_screen.dart';
import '../../../Screens/auth/create_account_screen.dart';
import '../../../Screens/start/splash_screen.dart';
import 'routes_name.dart';

class Routes {
  // Function to generate routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case RoutesName.onboard:
        // Example of passing arguments to the ProfileScreen
        //   final args = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => OnboardingScreen());

      case RoutesName.resumeScreen:
        return MaterialPageRoute(builder: (_) => ResumeScreen());

      case RoutesName.bottomNavBarScreen:
        return MaterialPageRoute(builder: (_) => BottomNavBarScreen());

      case RoutesName.crateAccountScreen:
        return MaterialPageRoute(builder: (_) => const CreateAccountScreen());

      case RoutesName.createResume:
        return MaterialPageRoute(builder: (_) => CreateResumeScreen());

      case RoutesName.settingScreen:
        return MaterialPageRoute(builder: (_) => const SettingScreen());

      case RoutesName.resumeDetailScreen:
        return MaterialPageRoute(builder: (_) => const ResumeDetailScreen());
      case RoutesName.educationFormDetail:
        return MaterialPageRoute(builder: (_) => const EducationFormDetailScreen());
 case RoutesName.educationForm:
        return MaterialPageRoute(builder: (_) => const EducationForm());
 case RoutesName.jobTitle:
        return MaterialPageRoute(builder: (_) => const JobTitle());
 case RoutesName.careerObjective:
        return MaterialPageRoute(builder: (_) => const CareerObjective());

      default:
        // Return a NotFoundScreen for undefined routes
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}

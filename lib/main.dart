import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resumemaker/provider/bottomNavBar/bottomNavBarProvider.dart';
import 'package:resumemaker/provider/onboarding/onboarding.dart';
import 'package:resumemaker/provider/resume/resumeProvider.dart';
import 'package:sizer/sizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'Screens/NoFoundScreen/no_found_screen.dart';
import 'config/res/Constants/app_colors.dart';
import 'config/res/routes/routes.dart';
import 'config/res/routes/routes_name.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://hggwvcgtcfbbavvathdj.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhnZ3d2Y2d0Y2ZiYmF2dmF0aGRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI4ODQwODksImV4cCI6MjA0ODQ2MDA4OX0.GQlkusQXxNLHMHOEowDp0FtB4BMALlobDg9rObb5Ffs",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => OnboardingProvider()),
          ChangeNotifierProvider(create: (_) => BottomNavProvider()),
          ChangeNotifierProvider(create: (_) => ResumeProvider()),
        ],
        child: Sizer(
          builder: (context, orientation, screenType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'CV Maker',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: primaryColor,primary: primaryColor),
                useMaterial3: true,
              ),
              // home: const SplashScreen(),
              initialRoute: RoutesName.splash,
              onGenerateRoute: Routes.generateRoute,
              onUnknownRoute: (settings) => MaterialPageRoute(
                  builder: (_) => const NotFoundScreen()
              ),
            );
          },
        )
    );
  }
}

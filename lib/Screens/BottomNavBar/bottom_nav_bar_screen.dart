import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../config/res/Constants/app_colors.dart';
import '../../config/res/Constants/app_icons.dart';
import '../../provider/bottomNavBar/bottomNavBarProvider.dart';
import '../Home/CareerTip/career_tip_screen.dart';
import '../Home/Letter/letter_screen.dart';
import '../Home/Resume/resume_screen.dart';
import '../Home/SettingScreen/setting_screen.dart';



class BottomNavBarScreen extends StatelessWidget {
   BottomNavBarScreen({super.key});
   final List<Widget> screens = [
     ResumeScreen(),
     LetterScreen(),
     CareerTipScreen(),
     SettingScreen(),
   ];
   @override
   Widget build(BuildContext context) {
     final bottomNavProvider = Provider.of<BottomNavProvider>(context);

     return Scaffold(
       body: Stack(
         children: [
           screens[bottomNavProvider.selectedIndex],
           Positioned(
             bottom: 12.0, // Adjust padding as needed
             left: 5.0, // Horizontal margin
             right: 5.0,
             child: SafeArea(
             child: Container(
               padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
               margin: const EdgeInsets.symmetric(horizontal: 24),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(24),
                 boxShadow: [
                   BoxShadow(
                     color: primaryColor.withOpacity(0.3),
                     blurRadius: 20,
                     offset: const Offset(0, 20),
                   ),
                 ],
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   _buildNavItem(
                     context,
                     label: "Resumes",
                     image: AppIcons.bottom_1,
                     index: 0,
                   ),
                   _buildNavItem(
                     context,
                     label: "Letters",
                     image: AppIcons.bottom_2,
                     index: 1,
                   ),
                   _buildNavItem(
                     context,
                     label: "Career Tips",
                     image: AppIcons.bottom_3,
                     index: 2,
                   ),
                   _buildNavItem(
                     context,
                     label: "Settings",
                     image: AppIcons.bottom_3,
                     index: 3,

                   ),
                 ],
               ),
             ),
           ),)
         ],
       ),
     );
   }

   Widget _buildNavItem(BuildContext context,
       {required String label, required String image,required int index }) {
     final bottomNavProvider = Provider.of<BottomNavProvider>(context);
     final bool isActive = bottomNavProvider.selectedIndex == index;

     return GestureDetector(
       onTap: () {
         bottomNavProvider.setIndex(index);
       },
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           AnimatedBar(isActive: isActive),
           Opacity(
             opacity: bottomNavProvider.selectedIndex == index ? 1: 0.5,
             child: Column(
               children: [
                 Image.asset(
                   image,
                   height: 2.5.h,
                   color:  primaryColor,
                 ),
                 SizedBox(height: 0.5.h,),
                 Text(
                   label,
                   style: TextStyle(
                     fontSize: 14.sp,
                     color:  primaryColor,
                   ),
                 ),
               ],
             ),
           )
         ],
       ),
     );
   }

}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key, required this.isActive,
  });
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 200),
    margin: EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 30 : 0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: primaryColor
      ),
    );
  }
}



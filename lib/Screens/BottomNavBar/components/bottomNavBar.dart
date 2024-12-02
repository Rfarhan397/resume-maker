// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart'; // Assuming Provider is used for state management
// import 'package:sizer/sizer.dart';
//
// import '../../../config/res/Constants/app_colors.dart';
// import '../../../config/res/Constants/app_icons.dart';
// import '../../../provider/bottomNavBar/bottomNavBarProvider.dart';
//
// class BottomNavBarWidget extends StatelessWidget {
//   const BottomNavBarWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final bottomNavProvider = Provider.of<BottomNavProvider>(context);
//
//     return SafeArea(
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         margin: const EdgeInsets.symmetric(horizontal: 24),
//         decoration: BoxDecoration(
//           color: primaryColor.withOpacity(0.8),
//           borderRadius: BorderRadius.circular(24),
//           boxShadow: [
//             BoxShadow(
//               color: primaryColor.withOpacity(0.3),
//               blurRadius: 20,
//               offset: const Offset(0, 20),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             _buildNavItem(
//               context,
//               label: "Resumes",
//               image: AppIcons.bottom_1,
//               index: 0,
//               isSelected: bottomNavProvider.currentIndex == 0,
//             ),
//             _buildNavItem(
//               context,
//               label: "Letters",
//               image: AppIcons.bottom_2,
//               index: 1,
//               isSelected: bottomNavProvider.currentIndex == 1,
//             ),
//             _buildNavItem(
//               context,
//               label: "Career Tips",
//               image: AppIcons.bottom_3,
//               index: 2,
//               isSelected: bottomNavProvider.currentIndex == 2,
//             ),
//             _buildNavItem(
//               context,
//               label: "Settings",
//               image: AppIcons.bottom_3,
//               index: 3,
//               isSelected: bottomNavProvider.currentIndex == 3,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildNavItem(BuildContext context,
//       {required String label, required String image, required int index, required bool isSelected}) {
//     final bottomNavProvider = Provider.of<BottomNavProvider>(context, listen: false);
//
//     return GestureDetector(
//       onTap: () {
//         bottomNavProvider.updateIndex(index);
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             image,
//             height: 2.5.h,
//             color: isSelected ? primaryColor : Colors.white,
//           ),
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 10.sp,
//               color: isSelected ? primaryColor : darkGreyColor,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//

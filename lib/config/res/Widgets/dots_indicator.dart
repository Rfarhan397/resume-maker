import 'package:flutter/material.dart';

import '../Constants/app_colors.dart';


class DotsIndicator extends StatelessWidget {
  final int dotsCount;
  final int currentIndex;

  const DotsIndicator({
    super.key,
    required this.dotsCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(dotsCount, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 3.0),
          height: 10.0,
          width: currentIndex == index ? 20.0 : 10.0,
          decoration: BoxDecoration(
            color: currentIndex == index ? primaryColor : Colors.grey,
            borderRadius: BorderRadius.circular(6.0),
          ),
        );
      }),
    );
  }
}

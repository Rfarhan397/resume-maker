import 'package:flutter/material.dart';

class CustomImageIcon extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;
  const CustomImageIcon({super.key, required this.image,  this.onTap});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Image.asset(image,height: 20,width: 20,),
      ),
    );
  }
}

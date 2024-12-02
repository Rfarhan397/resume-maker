import 'package:flutter/material.dart';

import '../Constants/app_colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? inputController;
  final TextInputType? type;
  final TextInputAction? textInputAction;
  final String hintText;
  final int? maxLines, maxLength;
  final EdgeInsets? contentPadding;
  const AppTextField({
    super.key,
     this.inputController,
    this.type,
    this.maxLines = 1,
    this.textInputAction,
    required this.hintText,
    this.maxLength,
     this.contentPadding
  });

  @override
  Widget build(BuildContext context) {
    return TextField(

      maxLines: maxLines,
      textInputAction: textInputAction,
      keyboardType: type,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: primaryColor,
      controller: inputController,
      maxLength: maxLength,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        fillColor: Colors.white,
        contentPadding:  contentPadding,
        filled: true,
        alignLabelWithHint: true,
        border: OutlineInputBorder(
          borderSide:  const BorderSide(
            color: primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  const BorderSide(
            color: primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:  const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
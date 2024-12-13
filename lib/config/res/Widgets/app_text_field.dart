import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Constants/app_colors.dart';
import 'app_text.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? inputController;
  final TextInputType? type;
  final TextInputAction? textInputAction;
  final String hintText;
  final int? maxLines, maxLength;
  final EdgeInsets? contentPadding;
  final ValueChanged<String>? onChanged;
  const AppTextField({
    super.key,
     this.inputController,
    this.type,
    this.maxLines = 1,
    this.textInputAction,
    required this.hintText,
    this.maxLength,
     this.contentPadding,
    this.onChanged
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
      onChanged:onChanged ,
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
class AppTextFieldWithText extends StatelessWidget {
  final TextEditingController? inputController;
  final TextInputType? type;
  final TextInputAction? textInputAction;
  final String hintText,text;
  final int? maxLines, maxLength;
  final EdgeInsets? contentPadding;
  final ValueChanged<String>? onChanged;
  const AppTextFieldWithText({
    super.key,
     this.inputController,
    this.type,
    this.maxLines = 1,
    this.textInputAction,
    required this.hintText,
    this.maxLength,
     this.contentPadding,
    this.onChanged, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: text,fontWeight: FontWeight.w500,fontSize: 16,textAlign: TextAlign.start,),
        SizedBox(height: 1.h,),
        TextField(

          maxLines: maxLines,
          textInputAction: textInputAction,
          keyboardType: type,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          onChanged:onChanged ,
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
        ),
      ],
    );
  }
}
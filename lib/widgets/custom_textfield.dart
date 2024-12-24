import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      this.controller,
      this.maxLine = 1,
      this.hintText});

  final TextEditingController? controller;
  final int maxLine;
  final String? hintText;
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: Colors.black,
      style: const TextStyle(color: CustomColor.scaffoldBg),
      decoration: InputDecoration(
        fillColor: CustomColor.whiteSecondary,
        filled: true,
        contentPadding: const EdgeInsets.all(16),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade800),
      ),
    );
  }
}

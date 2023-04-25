import 'package:flutter/material.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/contants/textformfield.dart';
import 'package:real_estate_agent/core/utils/colors.dart';

class TextformFieldWithName extends StatelessWidget {
  final String name;
  final String hintname;
  final double? hintFontSize;
  final double? nameFontSize;
  final FontWeight? nameFontWeight;
  final FontWeight? hintFontWeight;
  final Color? hintColor;
  final Color? nameColor;

  const TextformFieldWithName(
      {required this.name,
      required this.hintname,
      this.hintColor,
      this.hintFontSize,
      this.hintFontWeight,
      this.nameColor,
      this.nameFontSize,
      this.nameFontWeight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            color: nameColor ?? ThemeColors.title,
            fontSize: nameFontSize ?? Sizes.s15.sp,
            fontWeight: nameFontWeight ?? FontWeight.w600,
          ),
        ),
        CtmTextFormField(
          fontSize: hintFontSize ?? Sizes.s15.sp,
          textColor: hintColor ?? ThemeColors.textColor,
          hintText: hintname,
          fontWeight: hintFontWeight ?? FontWeight.w500,
        )
      ],
    );
  }
}

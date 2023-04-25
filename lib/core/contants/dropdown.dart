import 'package:flutter/material.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/utils/colors.dart';

class CtmDropDown extends StatefulWidget {
  final List<String>? list;
  String? value;
  String dropDownName;
  String hintText;

  CtmDropDown(
      {required this.dropDownName,
      required this.hintText,
      this.list,
      this.value,
      super.key});

  @override
  State<CtmDropDown> createState() => _CtmDropDownState();
}

class _CtmDropDownState extends State<CtmDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.dropDownName,
            style: TextStyle(
              color: ThemeColors.title,
              fontSize: Sizes.s15.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DropdownButton(
          isExpanded: true,
          style: TextStyle(
              color: ThemeColors.textColor,
              fontSize: Sizes.s14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'Karla'),
          hint: Text(
            widget.hintText,
            style: TextStyle(
                color: ThemeColors.textColor,
                fontSize: Sizes.s15.sp,
                fontWeight: FontWeight.w500,
                fontFamily: 'Karla'),
          ),
          value: widget.value,
          onChanged: (newValue) {
            setState(() {
              widget.value = newValue;
            });
          },
          items: widget.list!.map((items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
        ),
      ],
    );
    ;
  }
}

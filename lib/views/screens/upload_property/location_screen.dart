import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate_agent/core/contants/dropdown.dart';
import 'package:real_estate_agent/core/contants/textformfield_text.dart';
import 'package:real_estate_agent/core/contants/elevatedbutton.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/utils/colors.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String? selectedCity;
  String? selectedState;

  static const List<String> _cities = [
    'Mumbai',
    'Surat',
    'Jaipur',
    'Bhavnagar'
  ];
  static const List<String> _states = [
    'Gujarat',
    'Rajasthan',
    'Punjab',
    'Maharastra'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Sizes.s25.h, vertical: Sizes.s25.w),
        child: CtmElevatedButton(
            fontWeight: FontWeight.w700,
            borderColor: ThemeColors.transparent,
            fontSize: Sizes.s20.sp,
            width: MediaQuery.of(context).size.width,
            btnColor: ThemeColors.themeColor,
            txtColor: ThemeColors.white,
            text: 'Continue',
            onPressed: () {
              // if (_formkey.currentState!.validate()) {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => const OtpScreen()));
              // }
            }),
      ),
      body: Column(
        children: [
          ScreenUtil().setVerticalSpacing(20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextformFieldWithName(
                name: 'Enter property location',
                hintname: '23 cross, Harbar Layout, Bangalor'),
          ),
          ScreenUtil().setVerticalSpacing(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Flexible(
                  child: CtmDropDown(
                    hintText: 'Select ',
                    dropDownName: 'City',
                    list: _cities,
                    value: selectedCity,
                  ),
                ),
                ScreenUtil().setHorizontalSpacing(25),
                Flexible(
                  child: CtmDropDown(
                    hintText: 'Select ',
                    dropDownName: 'State',
                    list: _states,
                    value: selectedState,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

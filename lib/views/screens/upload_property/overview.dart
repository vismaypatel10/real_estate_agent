import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate_agent/core/contants/dropdown.dart';
import 'package:real_estate_agent/core/contants/elevatedbutton.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/contants/textformfield.dart';
import 'package:real_estate_agent/core/contants/textformfield_text.dart';
import 'package:real_estate_agent/core/utils/colors.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  // List<DropdownMenuItem<String>> get dropdownItems {
  //   List<DropdownMenuItem<String>> menuItems = [
  //     const DropdownMenuItem(
  //         value: "Select property type", child: Text("Select property type")),
  //     const DropdownMenuItem(value: "Land", child: Text("Land")),
  //     const DropdownMenuItem(value: "Residential", child: Text("Residential")),
  //     const DropdownMenuItem(value: "Commercial", child: Text("Commercial")),
  //     const DropdownMenuItem(value: "Industrial", child: Text("Industrial")),
  //   ];
  //   return menuItems;
  // }

  String? selectedProperty;
  String? selectedBedrooms;
  String? selectedBathrooms;

  final List<String> _bedroomsList = ['1', '2', '3', '4', '5'];
  final List<String> _bathroomsList = ['1', '2', '3', '4', '5'];
  final List<String> _ageOfPropertyList = [
    '0-1 years',
    '1-5 years',
    '5-10 years',
    '10+ years'
  ];
  final List<String> _propertyType = [
    'Land',
    'Residential',
    'Commercial',
    'Industrial'
  ]; // Option 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      // bottomNavigationBar:
      // Padding(
      //   padding: EdgeInsets.symmetric(
      //       horizontal: Sizes.s25.h, vertical: Sizes.s20.w),
      //   child: CtmElevatedButton(
      //       fontWeight: FontWeight.w700,
      //       borderColor: ThemeColors.transparent,
      //       fontSize: Sizes.s20.sp,
      //       width: MediaQuery.of(context).size.width,
      //       btnColor: ThemeColors.themeColor,
      //       txtColor: ThemeColors.white,
      //       text: 'Continue',
      //       onPressed: () {
      //         // if (_formkey.currentState!.validate()) {
      //         //   Navigator.push(
      //         //       context,
      //         //       MaterialPageRoute(
      //         //           builder: (context) => const OtpScreen()));
      //         // }
      //       }),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScreenUtil().setVerticalSpacing(30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextformFieldWithName(
                  hintname: 'Enter full name', name: 'Full Name'),
            ),
            ScreenUtil().setVerticalSpacing(30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextformFieldWithName(
                hintname: 'Enter phone number',
                name: 'Phone Number',
                keyboardType: TextInputType.number,
              ),
            ),
            ScreenUtil().setVerticalSpacing(30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextformFieldWithName(
                hintname: 'Enter Email',
                name: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            ScreenUtil().setVerticalSpacing(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Property title',
                style: TextStyle(
                  color: ThemeColors.title,
                  fontSize: Sizes.s15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: CtmTextFormField(
                  fontSize: Sizes.s15.sp,
                  textColor: ThemeColors.textColor,
                  hintText: 'Enter property title',
                  fontWeight: FontWeight.w500,
                )),
            ScreenUtil().setVerticalSpacing(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: CtmDropDown(
                hintText: "Select property type",
                dropDownName: 'Property Type',
                list: _propertyType,
                value: selectedProperty,
              ),
            ),
            ScreenUtil().setVerticalSpacing(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Flexible(
                    child: CtmDropDown(
                      hintText: 'Select ',
                      dropDownName: 'Bedrooms',
                      list: _bedroomsList,
                      value: selectedBedrooms,
                    ),
                  ),
                  ScreenUtil().setHorizontalSpacing(25),
                  Flexible(
                    child: CtmDropDown(
                      hintText: 'Select ',
                      dropDownName: 'Bathrooms',
                      list: _bathroomsList,
                      value: selectedBathrooms,
                    ),
                  ),
                ],
              ),
            ),
            ScreenUtil().setVerticalSpacing(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Expanded(
                    child: TextformFieldWithName(
                        hintname: 'Enter area', name: 'Area'),
                  ),
                  ScreenUtil().setHorizontalSpacing(25),
                  const Expanded(
                    child: TextformFieldWithName(
                        hintname: 'Enter price', name: 'Price per sq.ft'),
                  ),
                ],
              ),
            ),
            ScreenUtil().setVerticalSpacing(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: CtmDropDown(
                hintText: 'Select ',
                dropDownName: 'Age of property',
                list: _ageOfPropertyList,
                value: selectedBathrooms,
              ),
            ),
            ScreenUtil().setVerticalSpacing(30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextformFieldWithName(
                  hintname: 'Enter property info...', name: 'About project'),
            ),
            ScreenUtil().setVerticalSpacing(80),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.s25, vertical: Sizes.s20),
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
          ],
        ),
      ),
    );
  }
}

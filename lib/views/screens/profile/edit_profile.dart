import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_agent/core/contants/app_assets.dart';
import 'package:real_estate_agent/core/contants/elevatedbutton.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/contants/textformfield.dart';
import 'package:real_estate_agent/core/utils/colors.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      appBar: AppBar(
        backgroundColor: ThemeColors.white,
        elevation: 0,
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: SizedBox(
        //     height: Sizes.s25.h,
        //     width: Sizes.s25.w,
        //     child: Padding(
        //       padding: const EdgeInsets.all(16.0),
        //       child: SvgPicture.asset(
        //         AppAssets.backArrow,
        //         color: ThemeColors.black,
        //       ),
        //     ),
        //   ),
        // ),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: Sizes.s23.sp,
            color: ThemeColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ScreenUtil().setVerticalSpacing(20.0),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            height: Sizes.s130.h,
                            width: Sizes.s130.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: ThemeColors.orange, width: 3),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/image/profilepic.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: Sizes.s36.h,
                                width: Sizes.s36.w,
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ThemeColors.white, width: 3),
                                  shape: BoxShape.circle,
                                  color: ThemeColors.orange,
                                ),
                                child: SvgPicture.asset(AppAssets.cameraIcon),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ScreenUtil().setVerticalSpacing(40.0),
                    Text(
                      'FullName',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.s15.sp,
                          color: ThemeColors.textgrey),
                    ),
                    CtmTextFormField(
                      keyboardType: TextInputType.name,
                      hintText: 'Johan Roy',
                      hintTextColor: ThemeColors.blackText,
                      hintFontSize: Sizes.s15.sp,
                      hintFontWeight: FontWeight.w600,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                      },
                    ),
                    ScreenUtil().setVerticalSpacing(20.0),
                    Text(
                      'Email',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.s15.sp,
                          color: ThemeColors.textgrey),
                    ),
                    CtmTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Johanroy@gmail.com',
                      hintTextColor: ThemeColors.blackText,
                      hintFontSize: Sizes.s15.sp,
                      hintFontWeight: FontWeight.w600,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains('@')) {
                          return 'Enter email ID';
                        }
                        if (!value.contains('@')) {
                          return 'Enter valid email ID';
                        }
                      },
                    ),
                    ScreenUtil().setVerticalSpacing(20.0),
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.s15.sp,
                          color: ThemeColors.textgrey),
                    ),
                    CtmTextFormField(
                      keyboardType: TextInputType.phone,
                      hintText: '+91 98765 4321',
                      hintTextColor: ThemeColors.blackText,
                      hintFontSize: Sizes.s15.sp,
                      hintFontWeight: FontWeight.w600,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter phone number';
                        }
                        if (value.length != 10) {
                          return 'Enter correct phone number';
                        }
                      },
                    ),
                    ScreenUtil().setVerticalSpacing(Sizes.s60.h),
                    CtmElevatedButton(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        elevation: 0,
                        borderColor: ThemeColors.transparent,
                        txtColor: ThemeColors.white,
                        text: 'Submit',
                        btnColor: ThemeColors.themeColor,
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.pop(context);
                          }
                        }),
                    ScreenUtil().setVerticalSpacing(20.0)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

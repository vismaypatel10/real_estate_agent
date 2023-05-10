import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate_agent/core/contants/app_assets.dart';
import 'package:real_estate_agent/core/contants/elevatedbutton.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/contants/svgimage.dart';
import 'package:real_estate_agent/core/contants/textbutton.dart';
import 'package:real_estate_agent/core/contants/textformfield_icon.dart';
import 'package:real_estate_agent/core/utils/colors.dart';
import 'package:real_estate_agent/core/utils/validtor.dart';
import 'package:real_estate_agent/views/screens/authentication/signup/otp_screen.dart';
import 'package:real_estate_agent/views/screens/authentication/signup/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phone = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Sizes.s90.h,
                  ),
                  Image.asset(
                    AppAssets.loginLogo,
                    height: Sizes.s108.h,
                    width: Sizes.s108.w,
                  ),
                  // SvgPicture.asset(
                  //   AppAssets.loginLogo,
                  //   height: Sizes.s108.h,
                  //   width: Sizes.s108.w,
                  //   fit: BoxFit.cover,
                  // ),
                  ScreenUtil().setVerticalSpacing(40),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: ThemeColors.title,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // SizedBox(
                  //   height: Sizes.s110.h,
                  // ),
                  ScreenUtil().setVerticalSpacing(100),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone Number',
                      style: TextStyle(color: ThemeColors.textColor),
                    ),
                  ),

                  CtmTextFormFieldWithIcon(
                      keyboardType: TextInputType.phone,
                      labelTextColor: ThemeColors.textColor,
                      prefixIcon: CtmSVGImage(
                        imageheight: Sizes.s17.h,
                        imagewidth: Sizes.s17.w,
                        assetName: AppAssets.phoneIcon,
                        width: Sizes.s20.w,
                        height: Sizes.s20.h,
                      ),
                      hintText: 'Enter  Phone Number',
                      hintTextColor: ThemeColors.textColor,
                      controller: _phone,
                      validator: (value) => Validation.phoneValidation(value!)),
                  ScreenUtil().setVerticalSpacing(60),
                  CtmElevatedButton(
                      borderColor: ThemeColors.transparent,
                      fontWeight: FontWeight.w700,
                      fontSize: Sizes.s20.sp,
                      width: MediaQuery.of(context).size.width,
                      txtColor: ThemeColors.white,
                      text: 'Sign In',
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OtpScreen()));
                        }
                      }),

                  ScreenUtil().setVerticalSpacing(24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                            fontSize: Sizes.s14.sp,
                            color: ThemeColors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      ScreenUtil().setHorizontalSpacing(4),
                      CtmTextButton(
                          text: 'Sign up',
                          fontWeight: FontWeight.w700,
                          fontSize: Sizes.s14.sp,
                          fontcolor: ThemeColors.orange,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignupScreen()));
                          }),
                    ],
                  ),
                  ScreenUtil().setVerticalSpacing(40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Signing in you agree to ',
                          style: TextStyle(
                              fontFamily: 'Karla',
                              color: ThemeColors.black,
                              fontSize: Sizes.s14.sp,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                              text: 'Terms & Conditions, Privacy Policy  ',
                              style: TextStyle(
                                  color: ThemeColors.orange,
                                  fontSize: Sizes.s14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                                text: 'and ',
                                style: TextStyle(
                                    color: ThemeColors.black,
                                    fontSize: Sizes.s15.sp,
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                              text: 'Content Policy',
                              style: TextStyle(
                                  color: ThemeColors.orange,
                                  fontSize: Sizes.s14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

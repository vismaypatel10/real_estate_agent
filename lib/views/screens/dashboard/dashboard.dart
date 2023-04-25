import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate_agent/core/contants/app_assets.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/utils/colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                height: MediaQuery.of(context).size.height,
                AppAssets.onBoardingBg1,
                fit: BoxFit.cover,
              ),
              Positioned(
                  top: Sizes.s200.h,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total Properties: ',
                          style: TextStyle(
                              fontSize: Sizes.s15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                top: Sizes.s250.h,
                left: Sizes.s25.w,
                right: Sizes.s25.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        height: Sizes.s100.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ThemeColors.grey,
                        ),
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      Container(
                        height: Sizes.s100.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ThemeColors.grey,
                        ),
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      Container(
                        height: Sizes.s100.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ThemeColors.grey,
                        ),
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      Container(
                        height: Sizes.s100.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ThemeColors.grey,
                        ),
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      Container(
                        height: Sizes.s100.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ThemeColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

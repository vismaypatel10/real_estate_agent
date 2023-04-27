import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        body: SingleChildScrollView(
      child: Column(
        children: [
          ScreenUtil().setVerticalSpacing(150),
          Text(
            'Total Properties : 40',
            style:
                TextStyle(fontSize: Sizes.s20.sp, fontWeight: FontWeight.bold),
          ),
          ScreenUtil().setVerticalSpacing(40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: Sizes.s80.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ThemeColors.white),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/icons/commercialIcon.svg',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      ScreenUtil().setHorizontalSpacing(10),
                      Text(
                        'Commercial Properties',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: Sizes.s80.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ThemeColors.white),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/icons/residentialIcon.svg',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      ScreenUtil().setHorizontalSpacing(10),
                      Text(
                        'Residencial Properties',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: Sizes.s80.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ThemeColors.white),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/icons/IndustrialIcon.svg',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      ScreenUtil().setHorizontalSpacing(10),
                      Text(
                        'Industrial Properties',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: Sizes.s80.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ThemeColors.white),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/icons/landIcon.svg',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      ScreenUtil().setHorizontalSpacing(10),
                      Text(
                        'Land Properties',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

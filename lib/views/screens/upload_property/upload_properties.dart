import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_agent/core/contants/app_assets.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/utils/colors.dart';
import 'location_screen.dart';
import 'overview.dart';
import 'photos.dart';

class UploadPropertyScreen extends StatefulWidget {
  const UploadPropertyScreen({super.key});

  @override
  State<UploadPropertyScreen> createState() => _UploadPropertyScreenState();
}

class _UploadPropertyScreenState extends State<UploadPropertyScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ThemeColors.white,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(17.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                height: 18,
                width: 20,
                child: SvgPicture.asset(
                  AppAssets.backArrow,
                  color: ThemeColors.black,
                ),
              ),
            ),
          ),
          elevation: 6,
          backgroundColor: ThemeColors.white,
          title: Text(
            'Sell Property',
            style: TextStyle(
                color: ThemeColors.black,
                fontWeight: FontWeight.w600,
                fontSize: Sizes.s20.sp),
          ),
          bottom: TabBar(
              unselectedLabelColor: ThemeColors.textColor,
              unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.s15.sp,
                  color: ThemeColors.textColor),
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.s15.sp,
                  color: ThemeColors.themeColor),
              labelColor: ThemeColors.themeColor,
              indicatorColor: ThemeColors.transparent,
              tabs: const [
                Tab(
                  child: Text(
                    'Overview',
                  ),
                ),
                Tab(
                  child: Text(
                    'Location',
                  ),
                ),
                Tab(
                  child: Text(
                    'Photos',
                  ),
                )
              ]),
        ),
        body: const TabBarView(
          children: [OverviewScreen(), LocationScreen(), PhotoScreen()],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_utils/flutter_utils.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
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
      backgroundColor: ThemeColors.searchBg,
      appBar:
          AppBar(backgroundColor: ThemeColors.searchBg, elevation: 0, actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.logout),
          color: ThemeColors.black,
          iconSize: 25,
        )
      ]),
      body: Column(
        children: [
          Text(
            'Total Properties : 40',
            style:
                TextStyle(fontSize: Sizes.s20.sp, fontWeight: FontWeight.bold),
          ),
          ScreenUtil().setVerticalSpacing(40),
          Expanded(
            child: ScrollableColumn(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      const Expanded(
                        child: Text(
                          'Commercial Properties',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      // Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.forward))
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      const Expanded(
                        child: Text(
                          'Residencial Properties',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.forward))
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      const Expanded(
                        child: Text(
                          'Industrial Properties',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.forward))
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      const Expanded(
                        child: Text(
                          'Land Properties',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.forward))
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: Sizes.s80.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ThemeColors.white),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.sellIcon,
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      ScreenUtil().setHorizontalSpacing(10),
                      const Expanded(
                        child: Text(
                          'Sell Properties',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.forward))
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: Sizes.s80.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ThemeColors.white),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.buyIcon,
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      ScreenUtil().setHorizontalSpacing(10),
                      const Expanded(
                        child: Text(
                          'Buy Properties',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.forward))
                    ],
                  ),
                ),
                ScreenUtil().setVerticalSpacing(20)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:real_estate_agent/core/contants/app_assets.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/utils/colors.dart';
import 'package:real_estate_agent/views/screens/property_list.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.themeColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Sizes.s120.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: ThemeColors.themeColor,
              ),
              child: Center(
                child: Text(
                  'Total Properties : 40',
                  style: TextStyle(
                      fontSize: Sizes.s25.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Container(
                  color: ThemeColors.white,
                  child: ScrollableColumn(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      ScreenUtil().setVerticalSpacing(20),
                      CtmPropertyContainer(
                        assetName: AppAssets.commercialIcon,
                        text: 'Commercial Properties',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PropertyListScreen(),
                              ));
                        },
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      CtmPropertyContainer(
                        assetName: AppAssets.residentialIcon,
                        text: 'Residencial Properties',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PropertyListScreen(),
                              ));
                        },
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      CtmPropertyContainer(
                        assetName: AppAssets.industrialIcon,
                        text: 'Industrial Properties',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PropertyListScreen(),
                              ));
                        },
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      CtmPropertyContainer(
                        assetName: AppAssets.landIcon,
                        text: 'Land Properties',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PropertyListScreen(),
                              ));
                        },
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      CtmPropertyContainer(
                        assetName: AppAssets.sellIcon,
                        text: 'Sell Lead',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PropertyListScreen(),
                              ));
                        },
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      CtmPropertyContainer(
                        assetName: AppAssets.buyIcon,
                        text: 'Buy Lead',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PropertyListScreen(),
                              ));
                        },
                      ),
                      ScreenUtil().setVerticalSpacing(20)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CtmPropertyContainer extends StatelessWidget {
  final String assetName;
  final String text;
  final void Function()? onPressed;
  const CtmPropertyContainer({
    this.onPressed,
    required this.assetName,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: Sizes.s60.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: ThemeColors.grey),
          borderRadius: BorderRadius.circular(20),
          color: ThemeColors.white),
      child: Row(
        children: [
          SvgPicture.asset(
            assetName,
            height: 25,
            width: 25,
            fit: BoxFit.cover,
          ),
          ScreenUtil().setHorizontalSpacing(10),
          Expanded(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          IconButton(
              onPressed: onPressed, icon: const Icon(CupertinoIcons.forward))
        ],
      ),
    );
  }
}

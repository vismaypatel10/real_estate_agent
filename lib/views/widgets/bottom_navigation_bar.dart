import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_agent/core/contants/app_assets.dart';
import 'package:real_estate_agent/core/utils/colors.dart';
import 'package:real_estate_agent/views/screens/contact/contact_list.dart';
import 'package:real_estate_agent/views/screens/dashboard/dashboard.dart';

import '../screens/profile/edit_profile.dart';

class BotttomNavigationBar extends StatefulWidget {
  const BotttomNavigationBar({super.key});

  @override
  State<BotttomNavigationBar> createState() => _BotttomNavigationBarState();
}

class _BotttomNavigationBarState extends State<BotttomNavigationBar> {
  List pages = [
    const DashboardScreen(),
    const ContactList(),
    const EditProfileScreen()
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: ThemeColors.themeColor,
          unselectedItemColor: ThemeColors.textColor,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.bHomeIcon,
                  color: currentIndex == 0
                      ? ThemeColors.themeColor
                      : ThemeColors.textColor),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.blistIcon,
                  height: 25,
                  width: 25,
                  color: currentIndex == 1
                      ? ThemeColors.themeColor
                      : ThemeColors.textColor),
              label: '',
            ),
            // BottomNavigationBarItem(
            //   icon:
            //   // Text(
            //   //   'Home',
            //   //   style: TextStyle(
            //   //       fontSize: 20,
            //   //       fontWeight: FontWeight.bold,
            //   //       color: currentIndex == 0
            //   //           ? ThemeColors.themeColor
            //   //           : ThemeColors.textColor),
            //   // ),
            //   // label: '',
            // ),
            // BottomNavigationBarItem(
            //   icon: Text(
            //     'Sell Property',
            //     style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //         color: currentIndex == 1
            //             ? ThemeColors.themeColor
            //             : ThemeColors.textColor),
            //   ),
            //   label: '',
            // ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.bProfileIcon,
                  color: currentIndex == 2
                      ? ThemeColors.themeColor
                      : ThemeColors.textColor),
              label: '',
            ),
          ]),
    );
  }
}

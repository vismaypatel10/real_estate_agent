import 'package:flutter/material.dart';
import 'package:real_estate_agent/core/utils/colors.dart';
import 'package:real_estate_agent/views/screens/dashboard/dashboard.dart';
import 'package:real_estate_agent/views/screens/upload_property/upload_properties.dart';

class BotttomNavigationBar extends StatefulWidget {
  const BotttomNavigationBar({super.key});

  @override
  State<BotttomNavigationBar> createState() => _BotttomNavigationBarState();
}

class _BotttomNavigationBarState extends State<BotttomNavigationBar> {
  List pages = [const DashboardScreen(), const UploadPropertyScreen()];

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
              icon: Text(
                'Home',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: currentIndex == 0
                        ? ThemeColors.themeColor
                        : ThemeColors.textColor),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Text(
                'Sell Property',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: currentIndex == 1
                        ? ThemeColors.themeColor
                        : ThemeColors.textColor),
              ),
              label: '',
            ),
          ]),
    );
  }
}

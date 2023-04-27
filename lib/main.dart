import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate_agent/views/screens/dashboard/dashboard.dart';
import 'views/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // BottomBarViewModel _barViewModel = Get.put(BottomBarViewModel());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'ubuntu'),
      home:
          //  DashboardScreen(),
          const SplashScreen(),
      // const UploadPropertyScreen(),
      builder: (context, child) {
        ScreenUtil.init(context);

        return child!;
      },
    );
  }
}

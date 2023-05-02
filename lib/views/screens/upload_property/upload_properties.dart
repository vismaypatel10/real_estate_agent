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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // leading: Padding(
          //   padding: const EdgeInsets.all(17.0),
          //   child: Container(
          //     height: 18,
          //     width: 20,
          //     child: SvgPicture.asset(
          //       AppAssets.backArrow,
          //       color: ThemeColors.black,
          //     ),
          //   ),
          // ),
          elevation: 6,
          backgroundColor: ThemeColors.white,
          title: Text(
            'Upload Property',
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

class CustomTabIndicator extends Decoration {
  final double radius;

  final Color color;

  final double indicatorHeight;

  const CustomTabIndicator({
    this.radius = 8,
    this.indicatorHeight = 4,
    this.color = Colors.blue,
  });

  @override
  _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(
      this,
      onChanged,
      radius,
      color,
      indicatorHeight,
    );
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;
  final double radius;
  final Color color;
  final double indicatorHeight;

  _CustomPainter(
    this.decoration,
    VoidCallback? onChanged,
    this.radius,
    this.color,
    this.indicatorHeight,
  ) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    final Paint paint = Paint();
    double xAxisPos = offset.dx + configuration.size!.width / 2;
    double yAxisPos =
        offset.dy + configuration.size!.height - indicatorHeight / 2;
    paint.color = color;

    RRect fullRect = RRect.fromRectAndCorners(
      Rect.fromCenter(
        center: Offset(xAxisPos, yAxisPos),
        width: configuration.size!.width / 3,
        height: indicatorHeight,
      ),
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
    );

    canvas.drawRRect(fullRect, paint);
  }
}

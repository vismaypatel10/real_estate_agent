import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate_agent/core/contants/app_assets.dart';
import 'package:real_estate_agent/core/contants/elevatedbutton.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/utils/colors.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({super.key});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  List<File> imageList = [];
  getImage() async {
    List<File> file = await FileUtils.pickMultiImage();
    imageList.addAll(file);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Sizes.s25.h, vertical: Sizes.s25.w),
        child: CtmElevatedButton(
            fontWeight: FontWeight.w700,
            borderColor: ThemeColors.transparent,
            fontSize: Sizes.s20.sp,
            width: MediaQuery.of(context).size.width,
            btnColor: ThemeColors.themeColor,
            txtColor: ThemeColors.white,
            text: 'Upload',
            onPressed: () {}),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: const [9, 6],
                color: const Color(0xffDADADA),
                radius: Radius.circular(Sizes.s15.r),
                child: Container(
                  height: Sizes.s180.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffFBFBFB),
                      borderRadius: BorderRadius.circular(Sizes.s15.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.uploadImageIcon,
                        height: Sizes.s58.h,
                        width: Sizes.s58.w,
                      ),
                      ScreenUtil().setVerticalSpacing(15),
                      Text(
                        'Upload property image',
                        style: TextStyle(
                            color: ThemeColors.title,
                            fontSize: Sizes.s14.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      ScreenUtil().setVerticalSpacing(15),
                      CtmElevatedButton(
                          height: Sizes.s27.h,
                          width: Sizes.s100.w,
                          radius: Sizes.s20.r,
                          borderColor: ThemeColors.transparent,
                          txtColor: ThemeColors.white,
                          text: 'Upload',
                          fontSize: Sizes.s13.sp,
                          fontWeight: FontWeight.w500,
                          onPressed: () {
                            getImage();
                          }),
                    ],
                  ),
                ),
              ),
            ),
            ScreenUtil().setVerticalSpacing(25),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: imageList.length,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  height: Sizes.s80.h,
                  width: Sizes.s80.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: FileImage(
                            imageList[index],
                          ),
                          fit: BoxFit.cover),
                      // color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(15)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate_agent/core/contants/app_assets.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/utils/colors.dart';
import 'package:real_estate_agent/models/property_list_model.dart';

class PropertyListScreen extends StatefulWidget {
  const PropertyListScreen({super.key});

  @override
  State<PropertyListScreen> createState() => _PropertyListScreenState();
}

class _PropertyListScreenState extends State<PropertyListScreen> {
  List<Map<String, List<PropertyListModel>>> listProperty = [
    {
      'Today': [
        PropertyListModel(
          name: 'Chitranjan Mohan',
          profileImage: AppAssets.propertyImageExp,
          address: '23 cross, Harbar Leyout, Bangalor',
        ),
        PropertyListModel(
          name: 'Sara Sandhu',
          address: '23 cross, Harbar Leyout, Bangalor',
          profileImage: AppAssets.propertyImageExp,
        ),
        PropertyListModel(
          name: 'Abhishek Naruka',
          address: '23 cross, Harbar Leyout, Bangalor',
          profileImage: AppAssets.propertyImageExp,
        ),
        PropertyListModel(
          name: 'Jasmin Jacob',
          address: '23 cross, Harbar Leyout, Bangalor',
          profileImage: AppAssets.propertyImageExp,
        ),
      ]
    },
    {
      'Yesterday': [
        PropertyListModel(
          name: 'Chitranjan Mohan',
          address: '23 cross, Harbar Leyout, Bangalor',
          profileImage: AppAssets.propertyImageExp,
        ),
        PropertyListModel(
          name: 'Sara Sandhu',
          address: '23 cross, Harbar Leyout, Bangalor',
          profileImage: AppAssets.propertyImageExp,
        ),
        PropertyListModel(
          name: 'Abhishek Naruka',
          address: '23 cross, Harbar Leyout, Bangalor',
          profileImage: AppAssets.propertyImageExp,
        ),
        PropertyListModel(
          name: 'Jasmin Jacob',
          address: '23 cross, Harbar Leyout, Bangalor',
          profileImage: AppAssets.propertyImageExp,
        ),
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ThemeColors.white,
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenUtil().setVerticalSpacing(20),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          listProperty[index].keys.first,
                          style: TextStyle(
                              fontSize: Sizes.s20.sp,
                              fontWeight: FontWeight.w600,
                              color: ThemeColors.title),
                        ),
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) => const Divider(
                                thickness: 1, indent: 20, endIndent: 20),
                            itemCount: listProperty[index].values.first.length,
                            itemBuilder: (context, i) {
                              return Container(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Row(children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(Sizes.s15.r),
                                    child: SizedBox(
                                      height: Sizes.s68.h,
                                      width: Sizes.s68.w,
                                      child: Image.asset(listProperty[index]
                                          .values
                                          .first[i]
                                          .profileImage),
                                    ),
                                  ),
                                  ScreenUtil().setHorizontalSpacing(Sizes.s15),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              listProperty[index]
                                                  .values
                                                  .first[i]
                                                  .name,
                                              style: TextStyle(
                                                  fontSize: Sizes.s14.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              '12:00 PM',
                                              style: TextStyle(
                                                  fontSize: Sizes.s10.sp,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        ScreenUtil().setVerticalSpacing(11),
                                        Text(
                                          listProperty[index]
                                              .values
                                              .first[i]
                                              .address,
                                          style: TextStyle(
                                              fontSize: Sizes.s11.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Column(
                                  //   crossAxisAlignment:
                                  //       CrossAxisAlignment.start,
                                  //   children: [
                                  // Text(
                                  //   '12:00 PM',
                                  //   style: TextStyle(
                                  //       fontSize: Sizes.s10.sp,-
                                  //       fontWeight: FontWeight.w400),
                                  // ),
                                  //     // ScreenUtil().setVerticalSpacing(11),
                                  //     // Container(
                                  //     //   height: Sizes.s7.h,
                                  //     //   width: Sizes.s7.w,
                                  //     //   decoration: BoxDecoration(
                                  //     //       color: ThemeColors.orange,
                                  //     //       shape: BoxShape.circle),
                                  //     // )
                                  //   ],
                                  // )
                                ]),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: listProperty.length,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: Sizes.s16.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

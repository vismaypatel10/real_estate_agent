import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate_agent/core/contants/app_assets.dart';
import 'package:real_estate_agent/core/contants/sizes.dart';
import 'package:real_estate_agent/core/utils/colors.dart';
import 'package:real_estate_agent/models/contact_person_model.dart';
import 'package:real_estate_agent/views/screens/upload_property/upload_properties.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Map<String, List<ContactPersonModel>>> listContactPerson = [
    {
      'Today': [
        ContactPersonModel(
            name: 'Chitranjan Mohan',
            phoneNumber: '+91 3462785614',
            profileImage: AppAssets.mohanprofile),
        ContactPersonModel(
            name: 'Sara Sandhu',
            phoneNumber: '+91 5369115570',
            profileImage: AppAssets.saraprofile),
        ContactPersonModel(
            name: 'Abhishek Naruka',
            phoneNumber: '+91 9058440129',
            profileImage: AppAssets.abhishekprofile),
        ContactPersonModel(
            name: 'Jasmin Jacob',
            phoneNumber: '+91 9235438904',
            profileImage: AppAssets.jasminprofile),
      ]
    },
    {
      'Yesterday': [
        ContactPersonModel(
            name: 'Chitranjan Mohan',
            phoneNumber: '+91 3462785614',
            profileImage: AppAssets.mohanprofile),
        ContactPersonModel(
            name: 'Sara Sandhu',
            phoneNumber: '+91 5369115570',
            profileImage: AppAssets.saraprofile),
        ContactPersonModel(
            name: 'Abhishek Naruka',
            phoneNumber: '+91 9058440129',
            profileImage: AppAssets.abhishekprofile),
        ContactPersonModel(
            name: 'Jasmin Jacob',
            phoneNumber: '+91 9235438904',
            profileImage: AppAssets.jasminprofile),
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Properties',
          style: TextStyle(
            fontSize: Sizes.s23.sp,
            color: ThemeColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            highlightColor: ThemeColors.themeColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UploadPropertyScreen(),
                  ));
            },
            icon: const Icon(Icons.add),
            color: ThemeColors.black,
            iconSize: 30,
          )
        ],
        backgroundColor: ThemeColors.white,
        elevation: 0,
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
                          listContactPerson[index].keys.first,
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
                            itemCount:
                                listContactPerson[index].values.first.length,
                            itemBuilder: (context, i) {
                              return Container(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Text(
                                      //   "hey: ${namePhone[index].values.first[i].name}",
                                      //   style: TextStyle(fontSize: 12),
                                      // ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(Sizes.s15.r),
                                        child: SizedBox(
                                          height: Sizes.s68.h,
                                          width: Sizes.s68.w,
                                          child: Image.asset(
                                              listContactPerson[index]
                                                  .values
                                                  .first[i]
                                                  .profileImage),
                                        ),
                                      ),
                                      ScreenUtil()
                                          .setHorizontalSpacing(Sizes.s15),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  listContactPerson[index]
                                                      .values
                                                      .first[i]
                                                      .name,
                                                  style: TextStyle(
                                                      fontSize: Sizes.s14.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  '12:00 PM',
                                                  style: TextStyle(
                                                      fontSize: Sizes.s10.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            ScreenUtil().setVerticalSpacing(11),
                                            Text(
                                              listContactPerson[index]
                                                  .values
                                                  .first[i]
                                                  .phoneNumber,
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
                                      //       fontSize: Sizes.s10.sp,
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
                itemCount: listContactPerson.length,
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

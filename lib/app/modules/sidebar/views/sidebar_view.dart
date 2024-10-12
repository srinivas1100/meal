import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:meals/app/routes/app_pages.dart';

import '../controllers/sidebar_controller.dart';

class SidebarView extends GetView<SidebarController> {
  const SidebarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xff229BD5),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 233.h,
              width: 275.w,
              child: DrawerHeader(
                // padding: EdgeInsets.only(bottom: 44.h),
                decoration: const BoxDecoration(
                  color: Color(0xff267CA8),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: 200.w,
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.PROFILE);
                            },
                            child: SvgPicture.asset(
                              'assets/icons/ic_avatar_profile.svg',
                              height: 100.w,
                              width: 100.w,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 48.w,
                        // ),
                        Positioned(
                            right: 0.w,
                            top: 0.h,
                            child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.asset(
                                  'assets/icons/ic_whitecross.svg'),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      'Adam Collester',
                      style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(Routes.CHECK_PROGRESS);
                print('Yes');
              },
              contentPadding: EdgeInsets.only(left: 48.w),
              title: Text(
                'Check Your Progress',
                style:
                    TextStyle(color: const Color(0xffFFFFFF), fontSize: 16.sp),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 48.w),
              title: Text(
                'Favourite Tracks',
                style:
                    TextStyle(color: const Color(0xffFFFFFF), fontSize: 16.sp),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 48.w),
              title: Text(
                'Tutorial',
                style:
                    TextStyle(color: const Color(0xffFFFFFF), fontSize: 16.sp),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 48.w),
              title: Text(
                'Subscription',
                style:
                    TextStyle(color: const Color(0xffFFFFFF), fontSize: 16.sp),
              ),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(Routes.SETTINGS);
              },
              contentPadding: EdgeInsets.only(left: 48.w),
              title: Text(
                'Settings',
                style:
                    TextStyle(color: const Color(0xffFFFFFF), fontSize: 16.sp),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 48.w),
              title: Text(
                'BEATBoXX Website',
                style:
                    TextStyle(color: const Color(0xffFFFFFF), fontSize: 16.sp),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 48.w),
              title: Text(
                'News & Updates',
                style:
                    TextStyle(color: const Color(0xffFFFFFF), fontSize: 16.sp),
              ),
            ),
            ListTile(
              onTap: () {
                Get.dialog(Dialog(
                  backgroundColor: const Color(0xffEFEFEF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 17.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: Text(
                          'Are you sure you want to \nlogout from the app?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color(0xff000000).withOpacity(1),
                              fontSize: 16.sp),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 44.h,
                              child: TextButton(
                                onPressed: () {
                                  Get.back(); // Close the dialog
                                },
                                child: Text(
                                  'NO',
                                  style: TextStyle(
                                    color: const Color(0xff2A9DD6),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.w,
                            height: 44.h,
                            color: Colors.grey, // Divider between buttons
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 44.h,
                              child: TextButton(
                                onPressed: () {
                                  // Add your delete account logic here
                                  Get.toNamed(Routes.LOGIN); // Close the dialog
                                },
                                child: Text(
                                  'YES',
                                  style: TextStyle(
                                    color: const Color(0xff000000)
                                        .withOpacity(0.5),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
              },
              contentPadding: EdgeInsets.only(left: 48.w),
              minLeadingWidth: 8.23.w,
              leading: SvgPicture.asset(
                'assets/icons/ic_logout.svg',
                height: 12.75.h,
                width: 11.77.w,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                    color: const Color(0xffFFFFFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:meals/app/routes/app_pages.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffCFECFA),
                  Color(0xffFFFFFF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset(
              'assets/icons/Left Arrow.svg',
              height: 16.h,
              width: 20.w,
            ),
          ),
          title: Text(
            'Settings',
            style: TextStyle(
              color: const Color(0xff1C9AD5),
              fontSize: 18.h,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Container(
        color: const Color(0xffFFFFFF),
        child: Padding(
          padding: EdgeInsets.only(left: 28.w, right: 28.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 34.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.ABOUT);
                },
                child: Text(
                  'About',
                  style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Terms & Conditions',
                  style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.CONTACTUS);
                },
                child: Text(
                  'Contact us',
                  style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.dialog(
                    Dialog(
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
                              'Are you sure you want to \ndelete your account from \nthis app?',
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
                                      Get.toNamed(
                                          Routes.LOGIN); // Close the dialog
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
                    ),
                  );
                },
                child: Text(
                  'Delete Account',
                  style: TextStyle(color: Color(0xff000000), fontSize: 16.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

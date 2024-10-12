import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/freetrail_controller.dart';

class FreetrailView extends GetView<FreetrailController> {
  const FreetrailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffCFECFA), Color(0xff229BD5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            // Other content here
            Positioned(
              top: 20 + MediaQuery.of(context).padding.top, // Position from top
              right: 28.w, // Position from left
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  'assets/icons/crossmark.svg',
                  height: 26.h,
                  width: 26.w,
                ),
              ),
            ),
            // Add your main content here if needed
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo_login_screen@3x.png',
                    height: 60.h,
                    width: 200.w,
                  ),
                  SizedBox(
                    height: 48.h,
                  ),
                  Text(
                    'Free Trial',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'ACCESS ALL ALBUMS FOR 14 DAYS',
                    style: TextStyle(
                        color: const Color(0xffFFFFFF), fontSize: 16.sp),
                  ),
                  SizedBox(height: 32.h),
                  Container(
                    height: 42.h,
                    width: 319.w,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(50.r)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'START FREE TRIAL NOW',
                          style: TextStyle(
                              color: const Color(0xff229BD5),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Subscribe?',
                      style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffFFFFFF)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meals/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 310.h,
            width: Get.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff4653B2), Color(0xff1E1839)],
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 67.h,
                  ),
                  Image.asset(
                    'assets/images/logo_login_screen@3x.png',
                    width: 227.w,
                    height: 66.h,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Follow the Instructions,\n Match the Beat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color(0xffFFFFFF), fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 48.h,
                  ),
                  const Text(
                    'Get Started',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 48.w, right: 48.w),
            child: const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'adam@gmail.com',
                  hintStyle: TextStyle(fontSize: 18),
                  fillColor: Color(0xff222222)),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 48.w, right: 48.w),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Adam1234',
                hintStyle: const TextStyle(fontSize: 18),
                fillColor: const Color(0xff222222),
                suffixIcon: SizedBox(
                  height: 15.h,
                  width: 22.w,
                  child: SvgPicture.asset(
                    'assets/icons/eye_icon.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/checkbox_icon.svg'),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Keep me logged in',
                  style: TextStyle(fontSize: 14.h),
                )
              ],
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          Container(
            height: 42.h,
            width: 319.w,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xff94C2E7), Color(0xff1D99D5)]),
                borderRadius: BorderRadius.circular(50.r)),
            child: TextButton(
                onPressed: () {
                  Get.toNamed(Routes.FREETRAIL);
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: const Color(0xffFFFFFF),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                )),
          ),
          SizedBox(
            height: 32.h,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.FORGOT_PASSWORD);
            },
            child: Text(
              'Forgot password?',
              style: TextStyle(
                  color: const Color(0xff2A9DD6),
                  fontSize: 14.sp,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xff2A9DD6)),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 42.w),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 1.h,
                    color: const Color.fromARGB(137, 129, 125, 125),
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                const Text('Or continue with'),
                SizedBox(
                  width: 6.w,
                ),
                Expanded(
                  child: Divider(
                    height: 1.h,
                    color: const Color.fromARGB(137, 129, 125, 125),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 48.h,
            width: 80.w,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff229BD5)),
                borderRadius: BorderRadius.circular(50.r)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Image.asset(
                'assets/images/facebook.png',
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.CREATE_ACCOUNT);
            },
            child: Text(
              'New here? Create an account',
              style: TextStyle(color: const Color(0xff209AD5), fontSize: 14.sp),
            ),
          )
        ],
      ),
    ));
  }
}

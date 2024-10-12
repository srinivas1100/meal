import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xffCFECFA),
              Color(0xffFFFFFF),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SvgPicture.asset(
                'assets/icons/Left Arrow.svg',
                height: 16.h,
                width: 20.w,
              )),
          title: Text(
            'Forgot Password',
            style: TextStyle(
                color: const Color(0xff1C9AD5),
                fontSize: 18.h,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Please enter your registered email to reset your password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.h),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: TextStyle(
                        fontSize: 18.sp,
                        color: Color(0xff222222).withOpacity(0.5))),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            GestureDetector(
              onTap: () {
                Get.dialog(
                  Dialog(
                    backgroundColor: const Color(0xffEFEFEF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        Text(
                          'A link has been sent \nto your registered email to \nreset your password.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color(0xff000000).withOpacity(1),
                              fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        const Divider(),
                        SizedBox(
                          
                            height: 44.h,
                            width: 270.w,
                            child: TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  'Ok',
                                  style: TextStyle(
                                      color: const Color(0xff2A9DD6),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp),
                                )))
                      ],
                    ),
                  ),
                );
              },
              child: Container(
                height: 42.h,
                width: 319.w,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff94C2E7),
                        Color(0xff1D99D5),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            )
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:meals/app/routes/app_pages.dart';

import '../controllers/create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  const CreateAccountView({super.key});
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
                  Get.toNamed(Routes.LOGIN);
                },
                icon: SvgPicture.asset(
                  'assets/icons/Left Arrow.svg',
                  height: 16.h,
                  width: 20.w,
                )),
            title: Text(
              'Registration',
              style: TextStyle(
                  color: const Color(0xff1C9AD5),
                  fontSize: 18.h,
                  fontWeight: FontWeight.w700),
            ),
            centerTitle: true,
          ),
        ),
        body: Container(
          color: Color(0xffFFFFFF),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo_login_screen@3x.png',
                  height: 60.h,
                  width: 200.w,
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 48.w),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                        color: Color(0xff222222).withOpacity(0.5),
                        fontSize: 18.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 48.w),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: TextStyle(
                        color: Color(0xff222222).withOpacity(0.5),
                        fontSize: 18.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 48.w),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Color(0xff222222).withOpacity(0.5),
                        fontSize: 18.sp),
                    suffixIcon: SizedBox(
                      height: 15.h,
                      width: 22.w,
                      child: SvgPicture.asset(
                        'assets/icons/eye_iconopen.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 48.w),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                        color: Color(0xff222222).withOpacity(0.5),
                        fontSize: 18.sp),
                    suffixIcon: SizedBox(
                      height: 15.h,
                      width: 22.w,
                      child: SvgPicture.asset(
                        'assets/icons/eye_iconopen.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/icons/checkbox_icon.svg',
                    height: 20.h,
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'I am a healthy individual and I have my \ndoctor’s consent for the practice of \nmartial arts at home.',
                    style: TextStyle(color: Color(0xff262626), fontSize: 14.sp),
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
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
                                    color:
                                        const Color(0xff000000).withOpacity(1),
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
                    child: Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          ),
        ));
  }
}

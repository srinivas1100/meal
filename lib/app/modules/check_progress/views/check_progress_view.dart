import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/check_progress_controller.dart';

class CheckProgressView extends GetView<CheckProgressController> {
  const CheckProgressView({super.key});

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
            'Check Your Progress',
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
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 23.h,
              ),
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/icons/ic_avatar_profile.svg',
                    height: 100.h,
                    width: 100.w,
                    color: Colors.black,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: SvgPicture.asset(
                      'assets/icons/ic_belt_small.svg',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'No Chart Data Available',
                style: TextStyle(
                  color: const Color(0xff1E1839).withOpacity(0.5),
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 34.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '25 workout sessions left for blue belt',
                    style: TextStyle(
                      color: Color(0xff000000).withOpacity(0.5),
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  SvgPicture.asset('assets/icons/ic_blue_belt.svg'),
                ],
              ),
              SizedBox(
                height: 38.13.h,
              ),
              Container(
                height: 117.h,
                width: 319.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: const Color(0xff2A9DD6),
                    width: 1.w,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      '0.00',
                      style: TextStyle(
                        color: Color(0xff292929),
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'Workout Tracks',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Obx(() {
                      return DropdownButton<String>(
                        value: controller.selectedValue.value,
                        icon: SvgPicture.asset(
                          'assets/icons/uparrow.svg',
                          height: 9.h,
                          width: 15.w,
                        ),
                        elevation: 16,
                        style: TextStyle(
                          color: Color(0xff292929),
                          fontSize: 14.sp,
                        ),
                        items: <String>['Weekly', 'Monthly', 'Yearly']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            controller.updateSelectedValue(newValue);
                          }
                        },
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

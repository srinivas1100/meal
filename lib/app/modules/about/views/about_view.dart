import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({this.text, super.key});
  final String? text;
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
            'About',
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
        height: Get.height,
        color: const Color(0xffFFFFFF),
        child: Padding(
          padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 50.h),
          child: Text(
            'Lorem ipsum dolor sit amet consectetur. Viverra vitae facilisis proin malesuada faucibus libero. '
            'Pellentesque sagittis dis non tellus hac imperdiet posuere vulputate. Ultricies pretium fames arcu accumsan turpis facilisi diam pellentesque sagittis. '
            'Eget nisi leo elementum turpis in malesuada ultricies diam cursus. In nibh sed mauris amet vel. Sagittis fermentum ut viverra id sit semper facilisi ullamcorper. '
            'Porttitor ultricies interdum egestas risus. Sit sit egestas sodales in non amet risus. Vitae dolor dictum mauris aliquet. Semper odio rhoncus nec mus. '
            'Interdum mauris faucibus eu luctus pretium lectus. Integer sed id mi elit quis lacus eget.',
            style: TextStyle(
              fontSize: 16.sp, // Set the font size
            ),
          ),
        ),
      ),
    );
  }
}

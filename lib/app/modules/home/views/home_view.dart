import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:meals/app/modules/sidebar/views/sidebar_view.dart';
import 'package:meals/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SidebarView(),
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(56.0), // Set the height of the AppBar
          child: AppBar(
            // leading: GestureDetector(
            //   onTap: () {
            //     Get.toNamed(Routes.SIDEBAR);
            //   },
            //   child: Padding(
            //     padding: EdgeInsets.only(left: 28.w),
            //     child: SizedBox(
            //       height: 17.h,
            //       width: 22.w,
            //       child: SvgPicture.asset(
            //         'assets/icons/menu.svg',
            //         // fit: BoxFit.contain,
            //       ),
            //     ),
            //   ),
            // ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffCFECFA), Color(0xffFFFFFF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            title: Text(
              'BEATBoXX',
              style: TextStyle(
                  color: Color(0xff1C9AD5),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Padding(
                  padding: EdgeInsets.only(right: 28.w),
                  child: SvgPicture.asset(
                    'assets/icons/ic_search.svg',
                    height: 17.h,
                    width: 17.h,
                  ),
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 28.h,
            ),
            Center(
              child: Container(
                color: Color(0xffFFFFFF),
                padding: EdgeInsets.only(left: 49.w, right: 49.w),
                height: 215.h,
                width: 280.w,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              textAlign: TextAlign.start,
              'Positive Start',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/contactus_controller.dart';

class ContactusView extends GetView<ContactusController> {
  const ContactusView({super.key});

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
            'Contact us',
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
        padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 138.h), // Added padding for better layout
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32.h, // Add space between appBar and content
              ),
              Text(
                'How we can help?',
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 16.h, // Add space between text and the container
              ),
              Container(
                height: 135.h,
                width: 279.w, // Make container take up the full width
                padding:
                    EdgeInsets.all(8.w), // Add padding inside the container
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xff000000), width: 1.w),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: TextField(
                  maxLines: null, // Allows multiple lines
                  decoration: InputDecoration(
                    hintText: 'write briefly about your concern.',
                    hintStyle: TextStyle(
                      color: const Color(0xff000000).withOpacity(0.5),
                      fontSize: 12.sp,
                    ),
                    border: InputBorder
                        .none, // Removes the default TextField border
                  ),
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black, // Style the text input
                  ),
                ),
              ),
              SizedBox(
                height: 24.h, // Add space before additional components
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
                            'Thank you for contacting us. We will try getting back to you as soon as possible.',
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
              ),
              // Add more widgets like buttons or forms below if necessary
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:aics/modules/splash_controller.dart';
import 'package:aics/theam/app_string.dart';
import 'package:aics/theam/image.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController _splashController = Get.put(SplashController())
    ..splash();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  AppImage.aicsLogo,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 4.h,
            left: 23.w,
            child: Column(
              children: [
                CustomText(
                  text: AppString.splashText,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                CustomText(
                  text: AppString.splashSubText,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

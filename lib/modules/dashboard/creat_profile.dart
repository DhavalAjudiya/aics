import 'package:aics/theam/app_color.dart';
import 'package:aics/theam/app_string.dart';
import 'package:aics/theam/image.dart';
import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:aics/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CrateProfile extends StatelessWidget {
  const CrateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppImage.aicsLogoAuth,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            child: CustomButton(
              text: AppString.crateProfile,
              fontSize: 16.sp,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.w600,
              onTap: () {
                Navigation.pushNamed(Routes.createCompanyProfile);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            child: CustomButton(
              text: AppString.continueAsGuest,
              fontSize: 16.sp,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.w600,
              onTap: () {
                Navigation.pushNamed(Routes.homeScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}

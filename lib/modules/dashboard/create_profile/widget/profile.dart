import 'package:aics/theam/app_color.dart';
import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:aics/widget/custom_button.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Add Company",
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 15.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                    )
                  ],
                  border: Border.all(
                    color: AppColor.themColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                    vertical: 2.h,
                  ),
                  child: Column(
                    children: [
                      _companyDetaile(text: "Your Name"),
                      _companyDetaile(text: "Firm Name"),
                      _companyDetaile(text: "Address"),
                      _companyDetaile(text: "City"),
                      _companyDetaile(text: "PinCode"),
                      _companyDetaile(text: "State"),
                      _companyDetaile(text: "Country"),
                      _companyDetaile(text: "Mobile 1"),
                      _companyDetaile(text: "Mobile 2"),
                      _companyDetaile(text: "Email"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: CustomButton(
                  onTap: () {
                    Navigation.pushNamed(Routes.homeScreen);
                  },
                  text: "Save Company",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColor.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _companyDetaile({final String text = ""}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: text,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                // shadows: [BoxShadow(color: Colors.blue, blurRadius: 8,)],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 60.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 2,
                    )
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                      vertical: 0.5.h,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      // borderSide: BorderSide(color: AppColor.BackWhite),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      // borderSide: BorderSide(color: AppColor.BackWhite),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:aics/modules/splash_controller.dart';
import 'package:aics/theam/app_color.dart';
import 'package:aics/theam/app_string.dart';
import 'package:aics/theam/image.dart';
import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:aics/widget/custom_button.dart';
import 'package:aics/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MobileAuthentication extends StatelessWidget {
  MobileAuthentication({Key? key}) : super(key: key);
  final SplashController _splashController = Get.find();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppImage.aicsLogoAuth,
              ),
              // CustomText(
              //   text: AppString.mobileAuth,
              //   fontSize: 16.sp,
              //   fontWeight: FontWeight.w600,
              // ),
              // SizedBox(
              //   height: 2.h,
              // ),
              Form(
                key: loginKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 1.2.h, horizontal: 4.w),
                      child: Container(
                        height: 5.5.h,
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColor.boxShadow,
                              offset: Offset(1, 2),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: CommonTextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10)
                          ],
                          onChanged: (value) {},
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 5.w,
                          ),
                          // validator: (data) {
                          //   if (data!.isEmpty) {
                          //     return "Please Enter Valid Mobile Number";
                          //   }
                          //   return null;
                          // },
                          keyboardType: TextInputType.phone,
                          controller: _splashController.numberController,
                          autoValidateMode: AutovalidateMode.onUserInteraction,
                          hintText: AppString.mobileAuthHint,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                      child: CustomButton(
                        text: AppString.otpButton,
                        fontSize: 16.sp,
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.w600,
                        onTap: () {
                          // if (loginKey.currentState!.validate()) {
                          // }
                          Navigation.pushNamed(Routes.createProfile);
                          print(
                              "number-------91${_splashController.numberController.text}");
                          _splashController.numberController.clear();
                        },
                      ),
                    ),
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

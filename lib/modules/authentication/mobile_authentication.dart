import 'package:aics/helper/snackbar_helper.dart';
import 'package:aics/modules/splash_controller.dart';
import 'package:aics/theam/app_color.dart';
import 'package:aics/theam/app_string.dart';
import 'package:aics/theam/image.dart';
import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:aics/widget/custom_button.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:aics/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sizer/sizer.dart';

class MobileAuthentication extends StatelessWidget {
  MobileAuthentication({Key? key}) : super(key: key);
  final SplashController _splashController = Get.find();
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

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
              Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.2.h, horizontal: 4.w),
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
                        inputFormatters: [LengthLimitingTextInputFormatter(10)],
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 5.w,
                        ),
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
                        if (_splashController.numberController.text.isEmpty) {
                          AppSnackBar.showErrorSnackBar(
                              message: "Enter valid number", title: "Error");
                        } else {
                          Navigation.pushNamed(Routes.createProfile);
                        }

                        print(
                            "number-------91-${_splashController.numberController.text.length}");
                        _splashController.numberController.clear();
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                    child: GestureDetector(
                      onTap: () {
                        _handleSignIn();
                      },
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImage.google, width: 7.w),
                              CustomText(
                                text: AppString.googleSingIg,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                                color: AppColor.whiteColor,
                              ),
                              SizedBox(width: 5.w),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.themColor,
                          boxShadow: const [
                            BoxShadow(
                              color: AppColor.boxShadow,
                              offset: Offset(1, 2),
                              blurRadius: 8,
                            ),
                          ],
                          // border: Border.all(
                          //   color: AppColor.themColor,
                          //   width: 2,
                          // ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleSignIn() async {
    try {
      final result = await _googleSignIn.signIn();

      print('======== Google auth ===========');
      print(result?.email);
      print(result?.id);
      print(result?.displayName);
      print(result?.photoUrl);
      print(result?.serverAuthCode);
      print('===================');
      Navigation.pushNamed(Routes.createProfile);
    } catch (error) {
      print(error);
    }
  }
}

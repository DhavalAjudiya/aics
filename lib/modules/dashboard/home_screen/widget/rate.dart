import 'package:aics/theam/app_color.dart';
import 'package:aics/theam/image.dart';
import 'package:aics/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Rate extends StatelessWidget {
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.h, bottom: 7.h),
            child: const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(AppImage.world),
                radius: 120,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _selectDistance(
                  controller: _weightController,
                  hintText: "Enter Approx Weight",
                ),
                _selectDistance(
                  controller: _cityController,
                  hintText: "Enter your City",
                ),
                _selectDistance(
                  controller: _countryController,
                  hintText: "Enter Your Country",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _selectDistance({
    required String? hintText,
    required TextEditingController? controller,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.5.h),
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
          onChanged: (value) {},
          contentPadding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 5.w,
          ),
          keyboardType: TextInputType.text,
          controller: controller,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          hintText: hintText,
        ),
      ),
    );
  }
}

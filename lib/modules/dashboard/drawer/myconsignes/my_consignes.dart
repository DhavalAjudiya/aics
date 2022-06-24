import 'package:aics/theam/app_color.dart';
import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:aics/widget/custom_button.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:aics/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyConsignes extends StatefulWidget {
  MyConsignes({Key? key}) : super(key: key);

  @override
  State<MyConsignes> createState() => _MyConsignesState();
}

class _MyConsignesState extends State<MyConsignes> {
  int val = 0;
  TextEditingController pickUpDate = TextEditingController();
  TextEditingController pickUpTime = TextEditingController();
  TextEditingController declaredValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "MyConsignees",
          color: AppColor.whiteColor,
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 3.h, right: 4.w, left: 4.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.w),
              child: CustomButton(
                onTap: () {
                  Navigation.pushNamed(Routes.addNewConsignes);
                },
                text: "ADD NEW CONSIGNEES",
                fontWeight: FontWeight.w800,
                color: AppColor.whiteColor,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(height: 2.h),
            _radioItem(
              value: 0,
              groupValue: val,
              onChanged: (dynamic value) {
                setState(() {
                  val = value;
                });
              },
              text: "Roop Malin",
              subText: "Australia",
            ),
            _radioItem(
              value: 1,
              groupValue: val,
              onChanged: (dynamic value) {
                setState(() {
                  val = value;
                });
              },
              text: "Marieum Fashion",
              subText: "London",
            ),
            _radioItem(
              value: 2,
              groupValue: val,
              onChanged: (dynamic value) {
                setState(() {
                  val = value;
                });
              },
              text: "Seasons Apparel",
              subText: "London",
            ),
            _radioItem(
              value: 3,
              groupValue: val,
              onChanged: (dynamic value) {
                setState(() {
                  val = value;
                });
              },
              text: "True Fashion",
              subText: "Malaysia",
            ),
            _radioItem(
              value: 4,
              groupValue: val,
              onChanged: (dynamic value) {
                setState(() {
                  val = value;
                });
              },
              text: "Raj Fab",
              subText: "USA",
            ),
            SizedBox(height: 5.h),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                boxShadow: const [
                  BoxShadow(
                    color: AppColor.boxShadow,
                    offset: Offset(1, 1),
                    blurRadius: 10,
                  )
                ],
                border: Border.all(color: AppColor.themColor, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                child: Column(
                  children: [
                    _selectdate(
                      controller: pickUpDate,
                      hintText: "PickUp Date",
                    ),
                    _selectdate(
                      controller: pickUpTime,
                      hintText: "PickUp Time",
                    ),
                    _selectdate(
                      controller: declaredValue,
                      hintText: "DeclaredValue",
                    ),
                    SizedBox(height: 1.h),
                    _accountStatement(text: "Book PickUp", onTap: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _accountStatement({
    required String text,
    final GestureTapCallback? onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 2.h,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: AppColor.boxShadow,
                  offset: Offset(1, 2),
                  blurRadius: 8,
                )
              ],
              border: Border.all(color: AppColor.whiteColor, width: 2),
              color: AppColor.themColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: CustomText(
              text: text,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }

  _selectdate({
    required String? hintText,
    required TextEditingController? controller,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
      child: Container(
        height: 5.h,
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
          keyboardType: TextInputType.number,
          controller: controller,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          hintText: hintText,
        ),
      ),
    );
  }

  _radioItem({
    final int value = 0,
    required int groupValue,
    final ValueChanged? onChanged,
    final String text = "",
    final String subText = "",
  }) {
    return Column(
      children: [
        Row(
          children: [
            Radio(value: value, groupValue: groupValue, onChanged: onChanged),
            CustomText(
                text: text,
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600),
            SizedBox(width: 1.5.w),
            CustomText(
              text: subText,
              color: Colors.black38,
              fontSize: 13.sp,
            ),
          ],
        ),
        Divider(height: 0.0.h, thickness: 0.5),
      ],
    );
  }
}

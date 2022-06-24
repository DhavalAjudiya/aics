import 'package:aics/theam/app_color.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

class CouriesDetailes extends StatelessWidget {
  const CouriesDetailes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Couries Detailes ",
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 10.h,
                // width: 20.w,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        data[0]["image"],
                      ),
                    )),
              ),
              SizedBox(height: 3.h),
              CustomText(
                text: data[1]["name"],
                fontSize: 18.sp,
                fontWeight: FontWeight.w800,
              ),
              SizedBox(height: 1.h),
              CustomText(
                text: data[2]["country"],
                fontSize: 14.sp,
                color: Colors.black45,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10,
                          )
                        ],
                        color: Colors.amber,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 0.h),
                              child: _firstTable(),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 0.h),
                              child: Divider(
                                height: 5.h,
                                color: Colors.white,
                                thickness: 2,
                              ),
                            ),
                            _secondTable(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 0.h),
                              child: Divider(
                                height: 5.h,
                                color: Colors.white,
                                thickness: 2,
                              ),
                            ),
                            _thiredTable(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -3.5.h,
                    left: 30.w,
                    right: 30.w,
                    child: GestureDetector(
                      onTap: () async {
                        await Share.share('Share Example');
                      },
                      child: Container(
                        height: 7.h,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColor.themColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.share,
                            size: 5.h, color: AppColor.whiteColor),
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

  _firstTable() {
    return Table(
      children: [
        TableRow(
          children: [
            CustomText(text: "Pcs"),
            SizedBox(width: 5.w),
            CustomText(text: ":"),
            CustomText(text: "25"),
          ],
        ),
        TableRow(
          children: [
            CustomText(text: "Weight"),
            SizedBox(width: 5.w),
            CustomText(text: ":"),
            CustomText(text: "31.kg"),
          ],
        ),
        TableRow(
          children: [
            CustomText(text: "Amount"),
            SizedBox(width: 5.w),
            CustomText(text: ":"),
            CustomText(text: "52,000"),
          ],
        ),
        TableRow(
          children: [
            CustomText(text: "Booked By"),
            SizedBox(width: 5.w),
            CustomText(text: ":"),
            CustomText(text: "janak"),
          ],
        ),
        TableRow(
          children: [
            CustomText(text: "Bill No"),
            SizedBox(width: 5.w),
            CustomText(text: ":"),
            CustomText(text: "123"),
          ],
        ),
        TableRow(
          children: [
            CustomText(text: "Couries chd."),
            SizedBox(width: 5.w),
            CustomText(text: ":"),
            CustomText(text: "9,500"),
          ],
        ),
      ],
    );
  }

  _secondTable() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0.h),
      child: Table(
        children: [
          TableRow(
            children: [
              CustomText(text: "Booking Date"),
              SizedBox(width: 5.w),
              CustomText(text: ":"),
              CustomText(text: "27.05.21"),
            ],
          ),
          TableRow(
            children: [
              CustomText(text: "Mumbai Port"),
              SizedBox(width: 5.w),
              CustomText(text: ":"),
              CustomText(text: "29.05.21"),
            ],
          ),
          TableRow(
            children: [
              CustomText(text: "Received On"),
              SizedBox(width: 5.w),
              CustomText(text: ":"),
              CustomText(text: "31.05.21"),
            ],
          ),
        ],
      ),
    );
  }

  _thiredTable() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0.h),
      child: Table(
        children: [
          TableRow(
            children: [
              CustomText(text: "AWB"),
              SizedBox(width: 5.w),
              CustomText(text: ":"),
              CustomText(text: "3000112"),
            ],
          ),
          TableRow(
            children: [
              CustomText(text: "Tracking ID"),
              SizedBox(width: 5.w),
              CustomText(text: ":"),
              CustomText(text: "123456789"),
            ],
          ),
        ],
      ),
    );
  }
}

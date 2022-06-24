import 'package:aics/theam/app_string.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: myTabs.length, vsync: this);
  }

  final List<Tab> myTabs = <Tab>[
    Tab(
      child: CustomText(
        text: AppString.country,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
    Tab(
      child: CustomText(
        text: AppString.rate,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
    Tab(
      child: CustomText(
        text: AppString.account,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
  ];
}

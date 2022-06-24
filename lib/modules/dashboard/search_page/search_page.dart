import 'package:aics/modules/dashboard/search_page/search_controller.dart';
import 'package:aics/theam/app_color.dart';
import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:aics/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_back,
                          size: 9.w,
                        ),
                        onTap: () {
                          Navigation.pop();
                        },
                      ),
                      Container(
                        width: 80.w,
                        child: CommonTextField(
                          onChanged: (value) {
                            setState(() {
                              value = searchController.text;
                            });
                          },
                          hintText: "Search",
                          controller: searchController,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.5.h, horizontal: 4.w),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Expanded(
                      child: searchController.value.text.isEmpty
                          ? Column(
                              children: [
                                CustomText(
                                  text: "Enter Tracking Id / Party's Name",
                                  color: AppColor.themColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                ),
                              ],
                            )
                          : CustomText(
                              text: "Get DATA From Api",
                              color: AppColor.themColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                            )),
                ],
              )),
        ));
  }
}

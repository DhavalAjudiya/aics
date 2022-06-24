import 'package:aics/theam/app_color.dart';
import 'package:aics/theam/image.dart';
import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Courires extends StatelessWidget {
  const Courires({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigation.pushNamed(
                    Routes.couriesDetailes,
                    arg: [
                      {"image": AppImage.fedex},
                      {
                        "name": "Roop Milan",
                      },
                      {
                        "country": "London",
                      },
                      {
                        "position": "On Hold",
                      },
                      {
                        "code": "Tr-3000121",
                      },
                    ],
                  );
                },
                child: _Couriers(
                  image: AppImage.fedex,
                  name: "Roop Milan",
                  country: "London",
                  position: "On Hold",
                  code: "Tr-3000121",
                ),
              );
            },
            separatorBuilder: (BuildContext context, int j) {
              return const Divider(
                height: 0,
                color: Colors.black38,
              );
            },
            itemCount: 40,
          ),
        ),
      ],
    );
  }

  Widget _Couriers({
    required String name,
    required String country,
    required String position,
    required String code,
    required String image,
  }) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 8.h,
                width: 20.w,
                decoration: BoxDecoration(
                    color: AppColor.themColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    text: name,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                  CustomText(
                    text: country,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: Colors.black26,
                  ),
                ],
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    text: position,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Colors.orange,
                  ),
                  CustomText(
                    text: code,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: Colors.black26,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

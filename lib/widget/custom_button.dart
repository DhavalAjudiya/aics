import 'package:aics/theam/app_color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  void Function()? onTap;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? letterSpacing;
  final double? width;
  final double? height;

  CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.5.h),
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              letterSpacing: letterSpacing,
            ),
          ),
        ),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: AppColor.boxShadow,
              offset: Offset(1, 2),
              blurRadius: 8,
            ),
          ],
          color: AppColor.themColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

import 'dart:io';
import 'package:aics/theam/app_color.dart';
import 'package:aics/theam/app_string.dart';
import 'package:aics/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

class ExitUtils {
  DateTime currentBackPressTime = DateTime(0);

  Future<bool> exitApp() async {
    var now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
      Fluttertoast.showToast(
          msg: 'Click exit again',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: AppColor.themColor,
          textColor: AppColor.themColor,
          fontSize: 16.0);
      currentBackPressTime = now;
      return Future.value(false);
    }

    return Future.value(true);
  }

  Future<bool> onWillPopScope(context) async {
    final value = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColor.themColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: CustomText(
          text: AppString.exit,
          fontSize: 15.sp,
        ),
        actions: <Widget>[
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: CustomText(
              text: AppString.no,
              fontSize: 15.sp,
            ),
          ),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              exit(0);
            },
            child: CustomText(
              text: AppString.yes,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
    if (value != null) {
      return Future.value(value);
    } else {
      return Future.value(false);
    }
  }
}

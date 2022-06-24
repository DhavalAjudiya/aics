import 'dart:async';

import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final TextEditingController numberController = TextEditingController();

  void splash() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigation.pushNamed(Routes.mobileAuth);
      },
    );
  }

  String numberValidation() {
    return "Please Enter valid phone Number";
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackBar {
  static void showErrorSnackBar({String message = "", required String title}) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        borderRadius: 8,
        backgroundColor: Colors.red.withOpacity(0.8),
        animationDuration: const Duration(milliseconds: 500),
        barBlur: 7,
        colorText: Colors.white,
        isDismissible: false);
  }
}

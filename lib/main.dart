import 'package:aics/aics.dart';
import 'package:aics/theam/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

void main() {
  const SystemUiOverlayStyle(
    statusBarColor: AppColor.themColor,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Aics(),
        );
      },
    );
  }
}

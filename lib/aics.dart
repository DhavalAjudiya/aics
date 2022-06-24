import 'package:aics/modules/splash_controller.dart';
import 'package:aics/theam/app_color.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Aics extends StatefulWidget {
  const Aics({Key? key}) : super(key: key);

  @override
  State<Aics> createState() => _AicsState();
}

class _AicsState extends State<Aics> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: AppColor.backgroundColor,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        inputDecorationTheme: const InputDecorationTheme(),
        switchTheme: const SwitchThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 16,
            letterSpacing: 1,
          ),
        ),
      ),
      initialRoute: Routes.splashscreen,
      getPages: Routes.pages,
      initialBinding: AppBidding(),
      // home: const WelcomePage(),
    );
  }
}

void hideKeyboard(BuildContext context) {
  var currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus!.unfocus();
  }
}

class AppBidding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}

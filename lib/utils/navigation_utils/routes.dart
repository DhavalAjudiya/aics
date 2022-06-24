import 'package:aics/modules/authentication/mobile_authentication.dart';
import 'package:aics/modules/dashboard/creat_profile.dart';
import 'package:aics/modules/dashboard/create_profile/creat_profile.dart';
import 'package:aics/modules/dashboard/home_screen/home_screen.dart';
import 'package:aics/modules/slpash_screen.dart';
import 'package:get/get.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const splashscreen = "/splashscreen";
  static const mobileAuth = "/mobileAuthentication";
  static const createProfile = "/createProfile";
  static const createCompanyProfile = "/createCompanyProfile";
  static const homeScreen = "/homeScreen";

  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: splashscreen,
      page: () => SplashScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: mobileAuth,
      page: () => MobileAuthentication(),
      transition: defaultTransition,
      // curve: Curves.easeIn,
    ),
    GetPage<dynamic>(
      name: createProfile,
      page: () => const CrateProfile(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: homeScreen,
      page: () => HomeScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: createCompanyProfile,
      page: () => CreateCompanyProfile(),
      transition: defaultTransition,
    ),
  ];
}

import 'package:aics/modules/authentication/mobile_authentication.dart';
import 'package:aics/modules/dashboard/creat_profile.dart';
import 'package:aics/modules/dashboard/create_profile/creat_profile.dart';
import 'package:aics/modules/dashboard/create_profile/widget/profile.dart';
import 'package:aics/modules/dashboard/drawer/myconsignes/my_consignes.dart';
import 'package:aics/modules/dashboard/drawer/myconsignes/widget/add_new_consignees.dart';
import 'package:aics/modules/dashboard/home_screen/home_screen.dart';
import 'package:aics/modules/dashboard/home_screen/widget/couries_detailes.dart';
import 'package:aics/modules/dashboard/notification/notification_page.dart';
import 'package:aics/modules/dashboard/search_page/search_page.dart';
import 'package:aics/modules/slpash_screen.dart';
import 'package:get/get.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const splashscreen = "/splashscreen";
  static const mobileAuth = "/mobileAuthentication";
  static const createProfile = "/createProfile";
  static const createCompanyProfile = "/createCompanyProfile";
  static const homeScreen = "/homeScreen";
  static const couriesDetailes = "/couriesDetailes";
  static const notificationPage = "/notificationPage";
  static const searchPage = "/searchPage";
  static const profile = "/profile";
  static const myConsignes = "/myConsignes";
  static const addNewConsignes = "/addNewConsignes";

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
      name: createCompanyProfile,
      page: () => CreateCompanyProfile(),
      transition: defaultTransition,
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
      name: couriesDetailes,
      page: () => CouriesDetailes(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: notificationPage,
      page: () => NotificationPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: searchPage,
      page: () => SearchPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: profile,
      page: () => Profile(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: myConsignes,
      page: () => MyConsignes(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: addNewConsignes,
      page: () => AddNewConsigness(),
      transition: defaultTransition,
    ),
  ];
}

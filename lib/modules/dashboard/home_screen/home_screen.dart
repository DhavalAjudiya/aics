import 'package:aics/modules/dashboard/home_screen/controller/home_controller.dart';
import 'package:aics/modules/dashboard/home_screen/widget/account.dart';
import 'package:aics/modules/dashboard/home_screen/widget/couriers.dart';
import 'package:aics/modules/dashboard/home_screen/widget/rate.dart';
import 'package:aics/theam/app_color.dart';
import 'package:aics/theam/image.dart';
import 'package:aics/utils/navigation_utils/navigation.dart';
import 'package:aics/utils/navigation_utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.put(HomeController());

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        backgroundColor: AppColor.themColor,
        leading: IconButton(
          icon: const Icon(
            Icons.apps,
            color: Colors.white,
          ),
          onPressed: () {
            _drawerKey.currentState?.openDrawer();
            print("------${_drawerKey.currentState}");
          },
        ),
        title: const Center(
          child: Text(
            "AICS",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigation.pushNamed(Routes.searchPage);
            },
            icon: Icon(
              Icons.search,
              size: 7.5.w,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigation.pushNamed(Routes.notificationPage);
            },
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 7.5.w,
              color: Colors.white,
            ),
          ),
        ],
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: AppColor.whiteColor,
          labelColor: Colors.amber,
          labelStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
          indicatorColor: Colors.amber,
          unselectedLabelStyle:
              TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
          controller: homeController.tabController,
          tabs: homeController.myTabs,
        ),
      ),
      drawer: Drawer(
        child: _drawer(),
      ),
      body: TabBarView(
        controller: homeController.tabController,
        children: [
          const Courires(),
          Rate(),
          Account(),
        ],
      ),
    );
  }

  _drawer() {
    return Container(
      height: 100.h,
      width: 35.w,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImage.aicsLogoAuth),
                    fit: BoxFit.cover),
              ),
            ),
            Divider(
              height: 2.h,
              thickness: 1,
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.all(2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _drawerItem(
                    text: "My Profile",
                    image: AppIcon.profile,
                    onTap: () {
                      Navigation.pushNamed(Routes.createCompanyProfile);
                    },
                  ),
                  _drawerItem(
                    text: "My Consignees",
                    image: AppIcon.con,
                    onTap: () {
                      Navigation.pushNamed(Routes.myConsignes);
                    },
                  ),
                  _drawerItem(
                    text: "My Booking",
                    image: AppIcon.book,
                    onTap: () {},
                  ),
                  _drawerItem(
                    text: "Third Party Logistrics",
                    image: AppIcon.lo,
                    onTap: () {},
                  ),
                  _drawerItem(
                    text: "AICS",
                    image: AppIcon.ai,
                    onTap: () {},
                  ),
                  _drawerItem(
                    text: "SingOut",
                    image: AppIcon.logout,
                    onTap: () async {
                      try {
                        final result = await _googleSignIn.signOut();
                        print('-------1111--result ---${result}');
                        // setState(() {});
                        Navigation.popupUtil(Routes.mobileAuth);
                      } catch (error) {
                        print("errorrr----$error");
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _drawerItem({
    final GestureTapCallback? onTap,
    required String text,
    required String image,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(image, width: 9.w),
            SizedBox(width: 5.w),
            Text(
              text,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontStyle: FontStyle.italic,
                  color: AppColor.themColor,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

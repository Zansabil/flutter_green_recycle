import 'package:flutter_green_recycle/presentation/welcomescreen_screen/welcomescreen_screen.dart';
import 'package:flutter_green_recycle/presentation/welcomescreen_screen/binding/welcomescreen_binding.dart';
import 'package:flutter_green_recycle/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:flutter_green_recycle/presentation/splashscreen_screen/binding/splashscreen_binding.dart';
import 'package:flutter_green_recycle/presentation/login_screen/login_screen.dart';
import 'package:flutter_green_recycle/presentation/login_screen/binding/login_binding.dart';
import 'package:flutter_green_recycle/presentation/register_screen/register_screen.dart';
import 'package:flutter_green_recycle/presentation/register_screen/binding/register_binding.dart';
import 'package:flutter_green_recycle/presentation/homecontainer_screen/homecontainer_screen.dart';
import 'package:flutter_green_recycle/presentation/homecontainer_screen/binding/homecontainer_binding.dart';
import 'package:flutter_green_recycle/presentation/pickuptrash_screen/pickuptrash_screen.dart';
import 'package:flutter_green_recycle/presentation/pickuptrash_screen/binding/pickuptrash_binding.dart';
import 'package:flutter_green_recycle/presentation/selecttrash_screen/selecttrash_screen.dart';
import 'package:flutter_green_recycle/presentation/selecttrash_screen/binding/selecttrash_binding.dart';
import 'package:flutter_green_recycle/presentation/ordernow_screen/ordernow_screen.dart';
import 'package:flutter_green_recycle/presentation/ordernow_screen/binding/ordernow_binding.dart';
import 'package:flutter_green_recycle/presentation/tiket_screen/tiket_screen.dart';
import 'package:flutter_green_recycle/presentation/tiket_screen/binding/tiket_binding.dart';
import 'package:flutter_green_recycle/presentation/profile_screen/profile_screen.dart';
import 'package:flutter_green_recycle/presentation/profile_screen/binding/profile_binding.dart';
import 'package:flutter_green_recycle/presentation/editprofile_screen/editprofile_screen.dart';
import 'package:flutter_green_recycle/presentation/editprofile_screen/binding/editprofile_binding.dart';
import 'package:flutter_green_recycle/presentation/information_screen/information_screen.dart';
import 'package:flutter_green_recycle/presentation/information_screen/binding/information_binding.dart';
import 'package:flutter_green_recycle/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flutter_green_recycle/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String welcomescreenScreen = '/welcomescreen_screen';

  static const String splashscreenScreen = '/splashscreen_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String homePage = '/home_page';

  static const String homecontainerScreen = '/homecontainer_screen';

  static const String pickuptrashScreen = '/pickuptrash_screen';

  static const String selecttrashScreen = '/selecttrash_screen';

  static const String ordernowScreen = '/ordernow_screen';

  static const String tiketScreen = '/tiket_screen';

  static const String orderedPage = '/ordered_page';

  static const String orderedtabcontainerPage = '/orderedtabcontainer_page';

  static const String scheduledordersPage = '/scheduledorders_page';

  static const String orderhistoryPage = '/orderhistory_page';

  static const String profileScreen = '/profile_screen';

  static const String editprofileScreen = '/editprofile_screen';

  static const String informationScreen = '/information_screen';

  static const String privacyPage = '/privacy_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomescreenScreen,
      page: () => WelcomescreenScreen(),
      bindings: [
        WelcomescreenBinding(),
      ],
    ),
    GetPage(
      name: splashscreenScreen,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: homecontainerScreen,
      page: () => HomecontainerScreen(),
      bindings: [
        HomecontainerBinding(),
      ],
    ),
    GetPage(
      name: pickuptrashScreen,
      page: () => PickuptrashScreen(),
      bindings: [
        PickuptrashBinding(),
      ],
    ),
    GetPage(
      name: selecttrashScreen,
      page: () => SelecttrashScreen(),
      bindings: [
        SelecttrashBinding(),
      ],
    ),
    GetPage(
      name: ordernowScreen,
      page: () => OrdernowScreen(),
      bindings: [
        OrdernowBinding(),
      ],
    ),
    GetPage(
      name: tiketScreen,
      page: () => TiketScreen(),
      bindings: [
        TiketBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: editprofileScreen,
      page: () => EditprofileScreen(),
      bindings: [
        EditprofileBinding(),
      ],
    ),
    GetPage(
      name: informationScreen,
      page: () => InformationScreen(),
      bindings: [
        InformationBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    )
  ];
  
}


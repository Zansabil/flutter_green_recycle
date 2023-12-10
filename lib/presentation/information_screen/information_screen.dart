import 'controller/information_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/home_page/home_page.dart';
import 'package:flutter_green_recycle/presentation/orderedtabcontainer_page/orderedtabcontainer_page.dart';
import 'package:flutter_green_recycle/presentation/privacy_page/privacy_page.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_green_recycle/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_green_recycle/widgets/custom_bottom_bar.dart';

class InformationScreen extends GetWidget<InformationController> {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 41.v),
                  Container(
                      width: 365.h,
                      margin: EdgeInsets.only(left: 32.h, right: 31.h),
                      child: Text("msg_untuk_dapat_melakukan".tr,
                          maxLines: 31,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.50)))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconlyLightArrow,
            margin: EdgeInsets.only(left: 30.h, top: 8.v, bottom: 35.v),
            onTap: () {
              onTapIconlyLightArrow();
            }),
        centerTitle: true,
        title: AppbarSubtitle(
            text: "msg_syarat_ketentuan".tr,
            margin: EdgeInsets.only(top: 10.v, bottom: 32.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Pesanan:
        return AppRoutes.orderedtabcontainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.privacyPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.orderedtabcontainerPage:
        return OrderedtabcontainerPage();
      case AppRoutes.privacyPage:
        return PrivacyPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapIconlyLightArrow() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}

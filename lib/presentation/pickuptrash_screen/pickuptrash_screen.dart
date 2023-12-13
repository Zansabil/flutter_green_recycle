import '../pickuptrash_screen/widgets/pickuptrash_item_widget.dart';
import 'controller/pickuptrash_controller.dart';
import 'models/pickuptrash_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/home_page/home_page.dart';
import 'package:flutter_green_recycle/presentation/orderedtabcontainer_page/orderedtabcontainer_page.dart';
import 'package:flutter_green_recycle/presentation/privacy_page/privacy_page.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_green_recycle/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_green_recycle/widgets/custom_bottom_bar.dart';

class PickuptrashScreen extends GetWidget<PickuptrashController> {
  const PickuptrashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildCardAtasTab(),
                  SizedBox(height: 35.v),
                  _buildPickUpTrash()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildCardAtasTab() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 24.v),
          CustomAppBar(
              height: 32.v,
              leadingWidth: 60.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgIconlyLightArrow,
                  margin: EdgeInsets.only(left: 30.h, bottom: 1.v),
                  onTap: () {
                    Get.back();
                  }),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_jemput_sampah".tr),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgIconlyLightOu,
                    margin:
                        EdgeInsets.only(left: 30.h, right: 30.h, bottom: 1.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildPickUpTrash() {
    return Expanded(
        child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 12.h, right: 39.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 24.v);
                    },
                    itemCount: controller.pickuptrashModelObj.value
                        .pickuptrashItemList.value.length,
                    itemBuilder: (context, index) {
                      PickuptrashItemModel model = controller
                          .pickuptrashModelObj
                          .value
                          .pickuptrashItemList
                          .value[index];
                      return PickuptrashItemWidget(model,
                          NaviGateToSelectTrash: () {
                        NaviGateToSelectTrash();
                      });
                    })))));
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

  /// Navigates to the selecttrashScreen when the action is triggered.
  NaviGateToSelectTrash() {
    Get.toNamed(AppRoutes.selecttrashScreen);
  }

  /// Navigates to the homecontainerScreen when the action is triggered.
  
}

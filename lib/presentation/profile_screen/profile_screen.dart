import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/home_page/home_page.dart';
import 'package:flutter_green_recycle/presentation/orderedtabcontainer_page/orderedtabcontainer_page.dart';
import 'package:flutter_green_recycle/presentation/privacy_page/privacy_page.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_image.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_title.dart';
import 'package:flutter_green_recycle/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_green_recycle/widgets/custom_bottom_bar.dart';
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse45,
                          height: 93.v,
                          width: 96.h,
                          radius: BorderRadius.circular(48.h),
                          alignment: Alignment.center),
                      Padding(
                          padding: EdgeInsets.only(left: 157.h),
                          child: Text("lbl_khairin_putri".tr,
                              style: CustomTextStyles.titleMediumBold)),
                      SizedBox(height: 2.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_62895342770844".tr,
                              style:
                                  CustomTextStyles.labelLargeErrorContainer)),
                      SizedBox(height: 18.v),
                      CustomElevatedButton(
                          height: 31.v,
                          width: 143.h,
                          text: "lbl_rp_38_654_98".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 5.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCoinsstacked03,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeWhiteA70001Bold,
                          alignment: Alignment.center),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("lbl_akun".tr,
                              style:
                                  CustomTextStyles.titleLargeErrorContainer)),
                      SizedBox(height: 21.v),
                      _buildFrame(),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("lbl_info_lainnya".tr,
                              style:
                                  CustomTextStyles.titleLargeErrorContainer_1)),
                      SizedBox(height: 18.v),
                      _buildIconlyLightInfo1(),
                      SizedBox(height: 6.v),
                      _buildFrame1(),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: Container(
            padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 8.v),
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppbarImage(
                      imagePath: ImageConstant.imgIconlyLightArrow,
                      margin: EdgeInsets.only(bottom: 26.v)),
                  AppbarTitle(
                      text: "lbl_profil".tr,
                      margin: EdgeInsets.only(left: 130.h, bottom: 26.v)),
                  AppbarImage(
                      imagePath: ImageConstant.imgIconlyLightOu,
                      margin: EdgeInsets.only(
                          left: 131.h, right: 1.h, bottom: 26.v))
                ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame() {
    return GestureDetector(
        onTap: () {
          NaviGateToEditProfile();
        },
        child: SizedBox(
            height: 43.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                      onTap: () {
                        NaviGateToEditProfile();
                      },
                      child: Container(
                          height: 41.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: theme.colorScheme.primaryContainer
                                          .withOpacity(0.2),
                                      width: 1.h)))))),
              Padding(
                  padding:
                      EdgeInsets.only(left: 39.h, right: 27.h, bottom: 13.v),
                  child: _buildIconlyLightInfo(
                      userImage: ImageConstant.imgIconlyLightEdit,
                      securityLabel: "lbl_edit_profilku".tr))
            ])));
  }

  /// Section Widget
  Widget _buildIconlyLightInfo1() {
    return GestureDetector(
        onTap: () {
          navigateToInformation();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 27.h),
            decoration: AppDecoration.outlinePrimaryContainer2,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgIconlyLightInfo,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 12.h, bottom: 16.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 13.h, bottom: 10.v),
                      child: Text("msg_syarat_ketentuan".tr,
                          style: CustomTextStyles.titleLargeErrorContainer_2)),
                  Spacer(),
                  CustomImageView(
                      imagePath:
                          ImageConstant.imgIconlyLightArrowErrorcontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 16.v))
                ])));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return SizedBox(
        height: 42.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 41.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: theme.colorScheme.primaryContainer
                                  .withOpacity(0.2),
                              width: 1.h))))),
          Padding(
              padding: EdgeInsets.only(left: 39.h, right: 27.h, bottom: 12.v),
              child: _buildIconlyLightInfo(
                  userImage: ImageConstant.imgIconlyLightInfo,
                  securityLabel: "lbl_keamanan".tr))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildIconlyLightInfo({
    required String userImage,
    required String securityLabel,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
              imagePath: userImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v)),
          Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Text(securityLabel,
                  style: CustomTextStyles.titleLargeErrorContainer_2.copyWith(
                      color:
                          theme.colorScheme.errorContainer.withOpacity(0.8)))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgIconlyLightArrowErrorcontainer,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 4.v))
        ]);
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

  /// Navigates to the editprofileScreen when the action is triggered.
  NaviGateToEditProfile() {
    Get.toNamed(
      AppRoutes.editprofileScreen,
    );
  }

  /// Navigates to the informationScreen when the action is triggered.
  navigateToInformation() {
    Get.toNamed(
      AppRoutes.informationScreen,
    );
  }
}

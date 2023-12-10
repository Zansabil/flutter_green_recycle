import 'controller/editprofile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/core/utils/validation_functions.dart';
import 'package:flutter_green_recycle/presentation/home_page/home_page.dart';
import 'package:flutter_green_recycle/presentation/orderedtabcontainer_page/orderedtabcontainer_page.dart';
import 'package:flutter_green_recycle/presentation/privacy_page/privacy_page.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_green_recycle/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_green_recycle/widgets/custom_bottom_bar.dart';
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';
import 'package:flutter_green_recycle/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class EditprofileScreen extends GetWidget<EditprofileController> {
  EditprofileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 16.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse45,
                          height: 93.v,
                          width: 96.h,
                          radius: BorderRadius.circular(48.h)),
                      SizedBox(height: 13.v),
                      Text("msg_tambah_foto_yang".tr,
                          style: CustomTextStyles.labelMediumPrimaryContainer),
                      Text("msg_semua_orang_bisa".tr,
                          style: CustomTextStyles.labelMediumPrimaryContainer),
                      SizedBox(height: 7.v),
                      Text("msg_edit_foto_atau_avatar".tr,
                          style: CustomTextStyles.titleMediumPrimary
                              .copyWith(decoration: TextDecoration.underline)),
                      SizedBox(height: 42.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text("lbl_nama".tr,
                                  style: CustomTextStyles
                                      .titleSmallPrimaryContainer_1))),
                      SizedBox(height: 4.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text("lbl_khairin_putri2".tr,
                                  style: theme.textTheme.titleMedium))),
                      Divider(
                          color: theme.colorScheme.primaryContainer
                              .withOpacity(0.2),
                          indent: 21.h,
                          endIndent: 23.h),
                      SizedBox(height: 25.v),
                      _buildFortyTwo(),
                      SizedBox(height: 22.v),
                      _buildEmail(),
                      SizedBox(height: 22.v),
                      _buildPerempuan(),
                      SizedBox(height: 90.v),
                      _buildSimpan(),
                      SizedBox(height: 5.v)
                    ]))),
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
              onBackPressed();
            }),
        centerTitle: true,
        title: AppbarSubtitle(
            text: "lbl_edit_profil".tr,
            margin: EdgeInsets.only(top: 7.v, bottom: 35.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTf() {
    return CustomFloatingTextField(
        width: 283.h,
        controller: controller.tfController,
        labelText: "lbl_895342770844".tr,
        labelStyle: theme.textTheme.titleMedium!,
        hintText: "lbl_895342770844".tr,
        textInputType: TextInputType.phone,
        alignment: Alignment.bottomRight,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(left: 8.h, right: 8.h, bottom: 4.v));
  }

  /// Section Widget
  Widget _buildFortyTwo() {
    return SizedBox(
        height: 53.v,
        width: 352.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(bottom: 1.v),
                  color: theme.colorScheme.primaryContainer.withOpacity(0.05),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: theme.colorScheme.primaryContainer
                              .withOpacity(0.2),
                          width: 1.h),
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Container(
                      height: 31.v,
                      width: 69.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.v),
                      decoration: AppDecoration.outlinePrimaryContainer3
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder14),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 2.h),
                                child: Text("lbl_62".tr,
                                    style: theme.textTheme.titleMedium))),
                        CustomImageView(
                            imagePath: ImageConstant.imgMadeInIndonesia01,
                            height: 24.v,
                            width: 25.h,
                            alignment: Alignment.topLeft)
                      ])))),
          _buildTf()
        ]));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 23.h),
        child: CustomFloatingTextField(
            controller: controller.emailController,
            labelText: "lbl_alamat_email".tr,
            labelStyle: theme.textTheme.titleMedium!,
            hintText: "lbl_alamat_email".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildPerempuan() {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 23.h),
        child: CustomFloatingTextField(
            controller: controller.perempuanController,
            labelText: "lbl_jenis_kelamin".tr,
            labelStyle: theme.textTheme.titleMedium!,
            hintText: "lbl_jenis_kelamin".tr,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildSimpan() {
    return CustomElevatedButton(
        text: "lbl_simpan".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL14,
        onPressed: () {
          onTapSimpan();
        });
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

  /// Navigates to the previous screen.
  onBackPressed() {
    Get.back();
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapSimpan() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}

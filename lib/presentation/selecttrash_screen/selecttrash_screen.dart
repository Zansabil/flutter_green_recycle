import '../selecttrash_screen/widgets/selecttrash_item_widget.dart';
import 'controller/selecttrash_controller.dart';
import 'models/selecttrash_item_model.dart';
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
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SelecttrashScreen extends GetWidget<SelecttrashController> {
  const SelecttrashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                height: 750.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  _buildSelectTrash(),
                  _buildSchedulePickupButton()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconlyLightArrow,
            margin: EdgeInsets.only(left: 30.h, top: 8.v, bottom: 34.v),
            onTap: () {
              onBackPressed();
            }),
        centerTitle: true,
        title: AppbarSubtitle(
            text: "lbl_jenis_sampah".tr,
            margin: EdgeInsets.only(top: 10.v, bottom: 32.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconlyLightOu,
              margin: EdgeInsets.fromLTRB(30.h, 8.v, 30.h, 34.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSelectTrash() {
    return Obx(() => StaggeredGridView.countBuilder(
        shrinkWrap: true,
        primary: false,
        crossAxisCount: 4,
        crossAxisSpacing: 28.h,
        mainAxisSpacing: 28.h,
        staggeredTileBuilder: (index) {
          return StaggeredTile.fit(2);
        },
        itemCount: controller
            .selecttrashModelObj.value.selecttrashItemList.value.length,
        itemBuilder: (context, index) {
          SelecttrashItemModel model = controller
              .selecttrashModelObj.value.selecttrashItemList.value[index];
          return SelecttrashItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildSchedulePickupButton() {
    return CustomElevatedButton(
        width: 378.h,
        text: "msg_atur_jadwal_penjemputan".tr,
        margin: EdgeInsets.only(bottom: 76.v),
        buttonStyle: CustomButtonStyles.outlineErrorContainerTL14,
        onPressed: () {
          NaviGateToOrderNow();
        },
        alignment: Alignment.bottomCenter);
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

  /// Navigates to the ordernowScreen when the action is triggered.
  NaviGateToOrderNow() {
    Get.toNamed(
      AppRoutes.ordernowScreen,
    );
  }
}
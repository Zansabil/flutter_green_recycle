import 'controller/tiket_controller.dart';
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
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class TiketScreen extends GetWidget<TiketController> {
  const TiketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 30.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 60.v),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 32.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.h, vertical: 33.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgGroup237492),
                              fit: BoxFit.cover)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 122.v),
                            Text("msg_pesananmu_diterima".tr,
                                style: CustomTextStyles
                                    .titleMediumOnErrorContainer),
                            SizedBox(height: 33.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 23.h, right: 29.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_jenis_sampah2".tr,
                                                    style: theme
                                                        .textTheme.labelLarge),
                                                SizedBox(height: 10.v),
                                                Text("lbl_berat_sampah".tr,
                                                    style: theme
                                                        .textTheme.labelLarge),
                                                SizedBox(height: 9.v),
                                                SizedBox(
                                                    width: 81.h,
                                                    child: Text(
                                                        "msg_tanggal_penjemputan2"
                                                            .tr,
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: theme.textTheme
                                                            .labelLarge!
                                                            .copyWith(
                                                                height: 1.33))),
                                                SizedBox(height: 13.v),
                                                Text("lbl_lokasi".tr,
                                                    style: theme
                                                        .textTheme.labelLarge)
                                              ])),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_botol_plastik2".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer),
                                            SizedBox(height: 11.v),
                                            Text("lbl_12_5kg".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer),
                                            SizedBox(height: 10.v),
                                            Text("lbl_10_juni_2023".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer),
                                            SizedBox(height: 29.v),
                                            Text("lbl_kota_baru2".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer)
                                          ])
                                    ])),
                            SizedBox(height: 75.v),
                            Divider(color: appTheme.gray300),
                            SizedBox(height: 48.v),
                            Text("msg_estimasi_coin_yang".tr,
                                style: CustomTextStyles.bodyMediumGray600),
                            SizedBox(height: 3.v),
                            Text("lbl_rp140_000".tr,
                                style: CustomTextStyles.titleMediumPrimary_1)
                          ])),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                      text: "lbl_cek_pesanan".tr,
                      buttonStyle: CustomButtonStyles.fillPrimaryTL14)
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 78.v,
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconlyLightArrow,
            margin: EdgeInsets.only(left: 30.h, top: 13.v, bottom: 34.v),
            onTap: () {
              onTapIconlyLightArrow();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_pembayaran".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconlyLightOu,
              margin: EdgeInsets.fromLTRB(30.h, 13.v, 30.h, 34.v))
        ],
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

  /// Navigates to the homecontainerScreen when the action is triggered.
  onTapIconlyLightArrow() {
    Get.toNamed(
      AppRoutes.homecontainerScreen,
    );
  }
}

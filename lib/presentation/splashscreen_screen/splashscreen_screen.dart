import 'controller/splashscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 197.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Container(
                          width: 306.h,
                          margin: EdgeInsets.only(left: 55.h, right: 65.h),
                          child: Text("msg_selamat_datang_di".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .displaySmallOnPrimaryContainer
                                  .copyWith(height: 1.12))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 41.h),
                              child: Text("msg_solusi_masa_depan".tr,
                                  style: CustomTextStyles
                                      .bodyLargeOnPrimaryContainer))),
                      SizedBox(height: 66.v),
                      _buildSixtyOne()
                    ]))));
  }

  /// Section Widget
  Widget _buildSixtyOne() {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgDesainTanpaJudul,
                  height: 102.v,
                  width: 94.h,
                  margin: EdgeInsets.only(bottom: 38.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgDesainTanpaJudul68x134,
                  height: 68.v,
                  width: 134.h,
                  margin: EdgeInsets.only(top: 72.v))
            ]));
  }
}

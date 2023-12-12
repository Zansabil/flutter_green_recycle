import 'package:flutter_green_recycle/presentation/login_screen/login_screen.dart';

import 'controller/welcomescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';

class WelcomescreenScreen extends GetWidget<WelcomescreenController> {
  const WelcomescreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 27.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 306.h,
                              margin: EdgeInsets.only(left: 46.h, right: 75.h),
                              child: Text("msg_selamat_datang_di".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.displaySmall!
                                      .copyWith(height: 1.12)))),
                      Text("msg_solusi_masa_depan".tr,
                          style: CustomTextStyles.bodyLargeWhiteA70001),
                      SizedBox(height: 5.v),
                      SizedBox(
                          height: 490.v,
                          width: 422.h,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgDesainTanpaJudul,
                                height: 102.v,
                                width: 94.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 38.v)),
                            CustomImageView(
                                imagePath: ImageConstant.img7,
                                height: 490.v,
                                width: 385.h,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 11.h)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgDesainTanpaJudul68x134,
                                height: 68.v,
                                width: 134.h,
                                alignment: Alignment.bottomRight)
                          ])),
                      SizedBox(height: 55.v),
                      CustomElevatedButton(
                          text: "lbl_mulai_masuk".tr,
                          margin: EdgeInsets.symmetric(horizontal: 25.h),
                          buttonStyle: CustomButtonStyles.fillWhiteA,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumPrimary_1,
                          onPressed: () {
                            onTapMulaiMasuk();
                          
                          })
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapMulaiMasuk() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}

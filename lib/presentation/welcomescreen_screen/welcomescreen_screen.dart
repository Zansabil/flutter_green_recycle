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
        body: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 27.v),
          buildWelcomeText(),
          Text(
          "msg_solusi_masa_depan".tr,
          style: CustomTextStyles.bodyLargeWhiteA70001.copyWith(
            color: Colors.white, // Ubah warna teks menjadi hitam atau warna yang kontras dengan latar belakang
            shadows: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7), // Warna bayangan putih
                offset: Offset(1.0, 1.0), // Geser bayangan (x, y)
                blurRadius: 3.0, // Radius blur bayangan
              ),
            ],
          ),
        ),
          SizedBox(height: 5.v),
          buildImageStack(),
          SizedBox(height: 55.v),
          buildLoginButton(),
        ],
      ),
    );
  }

 Widget buildWelcomeText() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),  
        child: Text(
  "Selamat Datang Di GreenRecycle".tr,
  style: theme.textTheme.displaySmall!.copyWith(
    color: Colors.white, 
    height: 1.12,
    shadows: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5), // Warna bayangan
        offset: Offset(2.0, 2.0), // Geser bayangan (x, y)
        blurRadius: 3.0, // Radius blur bayangan
      ),
    ],
  ),
  textAlign: TextAlign.center,
),
    ),);
  }

  Widget buildImageStack() {
    return SizedBox(
      height: 490.v,
      width: 422.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDesainTanpaJudul,
            height: 102.v,
            width: 94.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: 38.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7,
            height: 490.v,
            width: 385.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 11.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDesainTanpaJudul68x134,
            height: 68.v,
            width: 134.h,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }

  Widget buildLoginButton() {
    return CustomElevatedButton(
      text: "lbl_mulai_masuk".tr,
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      buttonStyle: CustomButtonStyles.fillWhiteA,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
      onPressed: onTapMulaiMasuk,
    );
  }


  onTapMulaiMasuk() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}


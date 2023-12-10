import '../home_page/widgets/card_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/card_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';
import 'package:flutter_green_recycle/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.putih,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _buildJemputSampah(),
                              SizedBox(height: 20.v),
                              _buildFrame2(),
                              SizedBox(height: 7.v),
                              _buildFrame6(),
                              SizedBox(height: 20.v),
                              _buildFrame7(),
                              SizedBox(height: 20.v),
                              _buildCard()
                            ]))))));
  }

  /// Section Widget
  Widget _buildJemputSampah() {
    return SizedBox(
        height: 401.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 342.v,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  decoration: AppDecoration.fillPrimary,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 33.h, top: 51.v, right: 33.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("lbl_halo_khairin".tr,
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 2.v),
                                  Text("msg_sampah_dirumahmu".tr,
                                      style: CustomTextStyles
                                          .titleMediumWhiteA70001)
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgDesainTanpaJudul,
                        height: 67.v,
                        width: 94.h,
                        alignment: Alignment.topLeft)
                  ]))),
                  
          CustomImageView(
              imagePath: ImageConstant.img3,
              height: 248.v,
              width: 346.h,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 25.v)),
          CustomImageView(
             
              height: 45.v,
              width: 105.h,
              alignment: Alignment.topRight),
          CustomImageView(
              imagePath: ImageConstant.imgDesainTanpaJudul54x80,
              height: 54.v,
              width: 80.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 128.v)),
          CustomImageView(
              imagePath: ImageConstant.imgDesainTanpaJudul102x94,
              height: 102.v,
              width: 94.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 141.v, right: 11.h)),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 126.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgOmbak,
                        height: 126.v,
                        width: 428.h,
                        alignment: Alignment.center),
                    CustomElevatedButton(
                        height: 48.v,
                        width: 204.h,
                        text: "lbl_jemput_sampah".tr,
                        buttonStyle:
                            CustomButtonStyles.outlineErrorContainerTL181,
                        onPressed: () {
                          NaviGateToPickUpTrash();
                        },
                        alignment: Alignment.bottomCenter)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, right: 12.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_bank_sampah_tps".tr,
                      style: theme.textTheme.titleMedium),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Text("lbl_lihat_semua".tr,
                          style: CustomTextStyles.bodySmallPrimary))
                ])));
  }

  /// Section Widget
  Widget _buildFrame6() {
    return Container(
        margin: EdgeInsets.only(left: 25.h),
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder22),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 10.h),
            child: IntrinsicWidth(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder14),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 216.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 9.v),
                              decoration: AppDecoration.putih.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle2,
                                    height: 54.adaptSize,
                                    width: 54.adaptSize,
                                    radius: BorderRadius.circular(11.h),
                                    margin:
                                        EdgeInsets.symmetric(vertical: 4.v)),
                                Expanded(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 8.h, top: 1.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("msg_tps_telanaipura".tr,
                                                style: CustomTextStyles
                                                    .titleSmallErrorContainer),
                                            SizedBox(height: 2.v),
                                            Text("lbl_jln_kamboja_4".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer),
                                            SizedBox(height: 4.v),
                                            _buildFrame(distance: "lbl_5_8_km".tr)
                                          ])),
                                )
                              ])),
                          Container(
                              width: 216.h,
                              margin: EdgeInsets.only(left: 15.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 9.v),
                              decoration: AppDecoration.putih.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle254x54,
                                        height: 54.adaptSize,
                                        width: 54.adaptSize,
                                        radius: BorderRadius.circular(11.h),
                                        margin: EdgeInsets.symmetric(
                                            vertical: 4.v)),
                                    Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.h, top: 1.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("msg_tps_telanaipura2".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallErrorContainer),
                                                SizedBox(height: 2.v),
                                                Text("lbl_jln_kamboja_12".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallPrimaryContainer),
                                                SizedBox(height: 4.v),
                                                Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIconlyBoldLocation,
                                                      height: 12.adaptSize,
                                                      width: 12.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          bottom: 2.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 3.h),
                                                      child: Text("lbl_7_3_km".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallPrimary10))
                                                ])
                                              ])),
                                    )
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(left: 15.h),
                              child: _buildFrame1()),
                          Padding(
                              padding: EdgeInsets.only(left: 15.h),
                              child: _buildFrame1()),
                          Container(
                              width: 216.h,
                              margin: EdgeInsets.only(left: 15.h),
                              padding: EdgeInsets.all(10.h),
                              decoration: AppDecoration.putih.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle22,
                                        height: 54.adaptSize,
                                        width: 54.adaptSize,
                                        radius: BorderRadius.circular(11.h),
                                        margin: EdgeInsets.symmetric(
                                            vertical: 3.v)),
                                    Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Column(children: [
                                            Text("lbl_tps_danau_sipin".tr,
                                                style: CustomTextStyles
                                                    .titleSmallErrorContainer),
                                            SizedBox(height: 4.v),
                                            Text("lbl_jln_kamboja_18".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer),
                                            SizedBox(height: 5.v),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIconlyBoldLocation,
                                                      height: 12.adaptSize,
                                                      width: 12.adaptSize,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 3.h),
                                                      child: Text("lbl_10_km".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallPrimary10))
                                                ]))
                                          ])),
                                    )
                                  ])),
                          Container(
                              width: 216.h,
                              margin: EdgeInsets.only(left: 15.h),
                              padding: EdgeInsets.all(10.h),
                              decoration: AppDecoration.putih.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle23,
                                        height: 54.adaptSize,
                                        width: 54.adaptSize,
                                        radius: BorderRadius.circular(11.h),
                                        margin: EdgeInsets.symmetric(
                                            vertical: 3.v)),
                                    Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Column(children: [
                                            Text("msg_tps_sungai_putri".tr,
                                                style: CustomTextStyles
                                                    .titleSmallErrorContainer),
                                            SizedBox(height: 4.v),
                                            Text("lbl_jln_kamboja_87".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer),
                                            SizedBox(height: 5.v),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIconlyBoldLocation,
                                                      height: 12.adaptSize,
                                                      width: 12.adaptSize,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 3.h),
                                                      child: Text("lbl_11_km".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallPrimary10))
                                                ]))
                                          ])),
                                    )
                                  ]))
                        ])))));
  }

  /// Section Widget
  Widget _buildFrame7() {
    return Padding(
        padding: EdgeInsets.only(left: 25.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 5.v),
              child: Text("msg_baca_artikel_dulu".tr,
                  style: theme.textTheme.titleMedium)),
          CustomIconButton(
              height: 38.v,
              width: 37.h,
              padding: EdgeInsets.all(6.h),
              child: CustomImageView(imagePath: ImageConstant.imgGroup318))
        ]));
  }

  /// Section Widget
  Widget _buildCard() {
    return SizedBox(
        height: 198.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 25.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: controller.homeModelObj.value.cardItemList.value.length,
            itemBuilder: (context, index) {
              CardItemModel model =
                  controller.homeModelObj.value.cardItemList.value[index];
              return CardItemWidget(model);
            })));
  }

  /// Common widget
  Widget _buildFrame({required String distance}) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgIconlyBoldLocation,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 2.v)),
      Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(distance,
              style: CustomTextStyles.bodySmallPrimary10
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Common widget
  Widget _buildFrame1() {
    return Container(
        width: 216.h,
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.putih
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle21,
              height: 54.adaptSize,
              width: 54.adaptSize,
              radius: BorderRadius.circular(11.h),
              margin: EdgeInsets.symmetric(vertical: 3.v)),
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(children: [
                  Text("msg_tps_telanaipura3".tr,
                      style: CustomTextStyles.titleSmallErrorContainer),
                  SizedBox(height: 4.v),
                  Text("lbl_jln_kamboja_10".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer),
                  SizedBox(height: 5.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconlyBoldLocation,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("lbl_6_8_km".tr,
                                style: CustomTextStyles.bodySmallPrimary10))
                      ]))
                ])),
          )
        ]));
  }

  /// Navigates to the pickuptrashScreen when the action is triggered.
  NaviGateToPickUpTrash() {
    Get.toNamed(
      AppRoutes.pickuptrashScreen,
    );
  }
}

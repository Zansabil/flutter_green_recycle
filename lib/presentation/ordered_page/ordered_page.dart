import 'controller/ordered_controller.dart';
import 'models/ordered_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';

class OrderedPage extends StatelessWidget {
  OrderedPage({Key? key})
      : super(
          key: key,
        );

  OrderedController controller = Get.put(OrderedController(OrderedModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.putih,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildCard(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        children: [
          Container(
            height: 156.v,
            width: 9.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(12.h),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 15.v,
                bottom: 15.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup330,
                        height: 40.v,
                        width: 43.h,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            top: 2.v,
                            bottom: 4.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_no_pesanan_193".tr,
                                style: theme.textTheme.labelMedium,
                              ),
                              Text(
                                "msg_penjemputan_sampah".tr,
                                style: CustomTextStyles.labelLargeErrorContainer,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        height: 22.v,
                        width: 90.h,
                        text: "lbl_dalam_proses".tr,
                        margin: EdgeInsets.symmetric(vertical: 9.v),
                        buttonStyle: CustomButtonStyles.fillOrange,
                        buttonTextStyle: CustomTextStyles.labelMediumWhiteA70001,
                      ),
                    ],
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(right: 49.h),
                    child: Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_tanggal_pemesanan".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  "msg_25_juni_2023_11_30".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_berat".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                SizedBox(height: 4.v),
                                Text(
                                  "lbl_0_15kg".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              top: 1.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_jenis_sampah3".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "lbl_kaleng".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgIconlyBoldLocationErrorcontainer,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            "msg_lrg_anakonda_no".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

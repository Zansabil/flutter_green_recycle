import '../controller/orderhistory_controller.dart';
import '../models/orderhistory_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class OrderhistoryItemWidget extends StatelessWidget {
  OrderhistoryItemWidget(
    this.orderhistoryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderhistoryItemModel orderhistoryItemModelObj;

  var controller = Get.find<OrderhistoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        children: [
          SizedBox(
            child: Divider(
              color: theme.colorScheme.primary,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 15.v,
                bottom: 10.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup332,
                        height: 40.v,
                        width: 43.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 2.v,
                          bottom: 4.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Text(
                                orderhistoryItemModelObj.noPesanan!.value,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            Obx(
                              () => Text(
                                orderhistoryItemModelObj
                                    .penjemputanSampah!.value,
                                style:
                                    CustomTextStyles.labelLargeErrorContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        height: 22.v,
                        width: 56.h,
                        text: "lbl_selesai".tr,
                        margin: EdgeInsets.symmetric(vertical: 9.v),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL11,
                        buttonTextStyle:
                            CustomTextStyles.labelMediumWhiteA70001,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(right: 20.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => Text(
                                  orderhistoryItemModelObj
                                      .tanggalPemesanan!.value,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Obx(
                                () => Text(
                                  orderhistoryItemModelObj.price!.value,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => Text(
                                  orderhistoryItemModelObj.berat!.value,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Obx(
                                () => Text(
                                  orderhistoryItemModelObj.weight!.value,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 1.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => Text(
                                  orderhistoryItemModelObj.jenisSampah!.value,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Obx(
                                () => Text(
                                  orderhistoryItemModelObj.kaleng!.value,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Obx(
                    () => Text(
                      orderhistoryItemModelObj.coinYangDiDapat!.value,
                      style: CustomTextStyles.labelMedium_1,
                    ),
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

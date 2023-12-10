import '../controller/pickuptrash_controller.dart';
import '../models/pickuptrash_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';

// ignore: must_be_immutable
class PickuptrashItemWidget extends StatelessWidget {
  PickuptrashItemWidget(
    this.pickuptrashItemModelObj, {
    Key? key,
    this.NaviGateToSelectTrash,
  }) : super(
          key: key,
        );

  PickuptrashItemModel pickuptrashItemModelObj;

  var controller = Get.find<PickuptrashController>();

  VoidCallback? NaviGateToSelectTrash;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 144.v,
        width: 377.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 144.v,
                width: 377.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA70001,
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                  border: Border.all(
                    color: theme.colorScheme.primary,
                    width: 1.h,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                  child: LinearProgressIndicator(
                    value: 0.02,
                    backgroundColor: appTheme.whiteA70001,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  NaviGateToSelectTrash!.call();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            pickuptrashItemModelObj.bankSampahDahlia!.value,
                        height: 114.v,
                        width: 108.h,
                        radius: BorderRadius.circular(
                          18.h,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          top: 3.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Text(
                                pickuptrashItemModelObj.bankSampahKobar!.value,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 5.v),
                            Obx(
                              () => Text(
                                pickuptrashItemModelObj.menerimaSemuaJenis!.value,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            SizedBox(height: 40.v),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconlyBoldLocation,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 1.v,
                                    bottom: 2.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 2.h,
                                    top: 1.v,
                                  ),
                                  child: Obx(
                                    () => Text(
                                      pickuptrashItemModelObj.kotaBaru!.value,
                                      style: CustomTextStyles
                                          .labelLargeErrorContainer,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 3.v,
                                    bottom: 4.v,
                                  ),
                                  child: SizedBox(
                                    child: Divider(
                                      indent: 7.h,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 6.h,
                                    bottom: 1.v,
                                  ),
                                  child: Obx(
                                    () => Text(
                                      pickuptrashItemModelObj.distance!.value,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

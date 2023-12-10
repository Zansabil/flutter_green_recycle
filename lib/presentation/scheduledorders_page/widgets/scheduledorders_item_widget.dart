import '../controller/scheduledorders_controller.dart';
import '../models/scheduledorders_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';

class ScheduledordersItemWidget extends StatelessWidget {
  ScheduledordersItemWidget(
    this.scheduledordersItemModelObj, {
    Key? key,
  }) : super(key: key);

  final ScheduledordersItemModel scheduledordersItemModelObj;

  var controller = Get.find<ScheduledordersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.v,
      width: 378.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 70.v,
            width: 378.h,
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              borderRadius: BorderRadius.circular(7.h),
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7.h),
              child: LinearProgressIndicator(
                value: 0.02,
                backgroundColor: appTheme.whiteA70001,
                valueColor: AlwaysStoppedAnimation<Color>(
                  theme.colorScheme.primary,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(22.h, 0.v, 25.h, 0.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 39.v,
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillAmber.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder14,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgDesainTanpaJudul34x33,
                    height: 34.v,
                    width: 33.h,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(width: 10.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        scheduledordersItemModelObj.senin!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Container(
                      width: 150.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgIconlyBoldLocationOnprimary,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 2.v,
                            ),
                          ),
                          Expanded(
                            child: Obx(
                              () => Text(
                                scheduledordersItemModelObj.kotaBaru!.value,
                                style:
                                    CustomTextStyles.bodySmallErrorContainer,
                              ),
                            ),
                          ),
                          VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: theme.colorScheme.errorContainer.withOpacity(1),
                          ),
                          Expanded(
                            child: Obx(
                              () => Text(
                                scheduledordersItemModelObj.wib!.value,
                                style:
                                    CustomTextStyles.bodySmallErrorContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Obx(
                      () => Text(
                        scheduledordersItemModelObj.ubah!.value,
                        style: CustomTextStyles.labelLargePrimary,
                      ),
                    ),
                    SizedBox(height: 8.v), // Sesuaikan tinggi sesuai kebutuhan
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

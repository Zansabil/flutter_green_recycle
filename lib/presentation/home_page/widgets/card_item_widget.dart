import '../controller/home_controller.dart';
import '../models/card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';

// ignore: must_be_immutable
class CardItemWidget extends StatelessWidget {
  CardItemWidget(
    this.cardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardItemModel cardItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 361.h,
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.whiteA70001,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: Container(
              height: 143.v,
              width: 361.h,
              decoration: AppDecoration.outlineErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: cardItemModelObj.teknologi!.value,
                      height: 143.v,
                      width: 361.h,
                      radius: BorderRadius.vertical(
                        top: Radius.circular(14.h),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 102.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 21.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL141,
                      ),
                      child: Obx(
                        () => Text(
                          cardItemModelObj.teknologi1!.value,
                          style: CustomTextStyles.labelLargeWhiteA70001,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Expanded(
            child: Container(
              width: 319.h,
              margin: EdgeInsets.only(
                left: 20.h,
                right: 21.h,
              ),
              child: Obx(
                () => Text(
                  cardItemModelObj.aplikasiInovatif!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallErrorContainer.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

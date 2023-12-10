import '../controller/privacy_controller.dart';
import '../models/privacylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';

// ignore: must_be_immutable
class PrivacylistItemWidget extends StatelessWidget {
  PrivacylistItemWidget(
    this.privacylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PrivacylistItemModel privacylistItemModelObj;

  var controller = Get.find<PrivacyController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 41.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: theme.colorScheme.primaryContainer.withOpacity(0.2),
                    width: 1.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 46.h,
                right: 57.h,
                bottom: 13.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text(
                      privacylistItemModelObj.kataSandi!.value,
                      style: CustomTextStyles.titleLargeErrorContainer_2,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconlyLightArrowErrorcontainer,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 3.v,
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

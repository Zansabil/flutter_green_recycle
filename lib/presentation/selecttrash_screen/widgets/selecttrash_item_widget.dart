import '../controller/selecttrash_controller.dart';
import '../models/selecttrash_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SelecttrashItemWidget extends StatelessWidget {
  SelecttrashItemWidget(
    this.selecttrashItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelecttrashItemModel selecttrashItemModelObj;

  var controller = Get.find<SelecttrashController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: selecttrashItemModelObj.image!.value,
              height: 175.adaptSize,
              width: 175.adaptSize,
              radius: BorderRadius.circular(
                18.h,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            height: 77.v,
            width: 175.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: AppDecoration.putih.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL14,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 51.v),
                        CustomElevatedButton(
                          height: 26.v,
                          width: 175.h,
                          text: "lbl_tambah".tr,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeWhiteA70001,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 43.v,
                    width: 175.h,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 41.v,
                            width: 175.h,
                            decoration: BoxDecoration(
                              color: appTheme.whiteA70001,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                        )])))]))]));
  }
}

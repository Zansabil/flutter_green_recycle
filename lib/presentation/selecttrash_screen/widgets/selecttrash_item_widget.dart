import '../controller/selecttrash_controller.dart';
import '../models/selecttrash_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SelecttrashItemWidget extends StatefulWidget {
  SelecttrashItemWidget(
    this.selecttrashItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelecttrashItemModel selecttrashItemModelObj;

  @override
  State<SelecttrashItemWidget> createState() => _SelecttrashItemWidgetState();
}

class _SelecttrashItemWidgetState extends State<SelecttrashItemWidget> {
  var controller = Get.find<SelecttrashController>();
  bool isButtonPressed = false; // Tambahkan variabel untuk menangani status tombol ditekan

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: widget.selecttrashItemModelObj.image!.value,
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
                        InkWell(
                          onTap: () {
                            setState(() {
                              isButtonPressed = !isButtonPressed;
                            });
                          },
                          child: Container(
                            height: 26.v,
                            width: 175.h,
                            color: isButtonPressed
                                ? Colors.orange // Ganti dengan warna oranye
                                : appTheme.greenA400,
                            child: Center(
                              child: Text(
                                isButtonPressed
                                    ? "Ditambahkan".tr // Ganti dengan teks yang diinginkan
                                    : "lbl_tambah".tr,
                                style: isButtonPressed
                                    ? CustomTextStyles.labelLargeWhiteA70001
                                    : CustomTextStyles.labelLargeBlack70001,
                              ),
                            ),
                          ),
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:intl/intl.dart';

import 'controller/ordernow_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_green_recycle/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_green_recycle/widgets/custom_elevated_button.dart';
import 'package:flutter_green_recycle/widgets/custom_text_form_field.dart';

class OrdernowScreen extends StatefulWidget {
  const OrdernowScreen({Key? key}) : super(key: key);

  @override
  _OrdernowScreenState createState() => _OrdernowScreenState();
}

class _OrdernowScreenState extends State<OrdernowScreen> {
  final OrdernowController controller = OrdernowController();
  final TextEditingController dateController = TextEditingController();

@override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 31.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_lokasi_penjemputan2".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: "lbl".tr,
                      style: CustomTextStyles.titleMediumRedA700,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 13.v),
               _buildOrderFrame(),
              SizedBox(height: 27.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_tanggal_penjemputan2".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: "lbl".tr,
                      style: CustomTextStyles.titleMediumRedA700,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 12.v),
              _buildDateFrame(),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "lbl_catatan".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h, right: 6.h),
                child: CustomTextFormField(
                  controller: controller.catatantambahanController,
                  hintText: "msg_catatan_tambahan".tr,
                  textInputAction: TextInputAction.done,
                  maxLines: 7,
                ),
              ),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                text: "lbl_pesan_sekarang".tr,
                margin: EdgeInsets.only(left: 5.h, right: 6.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                onPressed: () {
                  NaviGateTotiket();
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconlyLightArrow,
        margin: EdgeInsets.only(left: 30.h, bottom: 42.v),
        onTap: () {
          onBackPressed();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_pembayaran".tr,
        margin: EdgeInsets.only(top: 2.v, bottom: 40.v),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconlyLightOu,
          margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 42.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildOrderFrame() {
    return Container(
      margin: EdgeInsets.only(right: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 18.v),
      decoration: AppDecoration.outlinePrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 94.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconlyBoldLocation,
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  margin: EdgeInsets.only(bottom: 21.v),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_9hwr_rhb".tr,
                          style: CustomTextStyles.titleSmallErrorContainer,
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "msg_lrg_anakonda_no_98".tr,
                          style: CustomTextStyles.bodyMediumErrorContainer,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          CustomTextFormField(
            controller: controller.frameController,
            hintText: "msg_tambahkan_detail".tr,
            contentPadding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 7.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDateFrame() {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 9.v),
      decoration: AppDecoration.outlinePrimaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () async {
              DateTime? selectedDate = await showDatePicker(
                context: context,
                initialDate: controller.selectedopenDatePickerDialogDate ?? DateTime.now(),
                firstDate: DateTime(1970),
                lastDate: DateTime(2100),
              );

              if (selectedDate != null) {
                // Update the selected date and trigger a re-render
                setState(() {
                  controller.selectedopenDatePickerDialogDate = selectedDate;
                  dateController.text = DateFormat('dd-MM-yyyy').format(selectedDate);
                });
              }
            },
            child: Text(
              dateController.text.isNotEmpty ? dateController.text : 'Pilih Tanggal',
              style: CustomTextStyles.bodyLargePrimaryContainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconlyBoldCalendar,
            height: 33.v,
            width: 24.h,
            onTap: () async {
              DateTime? selectedDate = await showDatePicker(
                context: context,
                initialDate: controller.selectedopenDatePickerDialogDate ?? DateTime.now(),
                firstDate: DateTime(1970),
                lastDate: DateTime(2100),
              );

              if (selectedDate != null) {
                // Update the selected date and trigger a re-render
                setState(() {
                  controller.selectedopenDatePickerDialogDate = selectedDate;
                  dateController.text = DateFormat('dd-MM-yyyy').format(selectedDate);
                });
              }
            },
          ),
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onBackPressed() {
    Get.back();
  }

  /// Displays a date picker dialog to update the selected date
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<DateTime?> openDatePickerDialog(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: controller.selectedopenDatePickerDialogDate ?? DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2100),
    );

    if (dateTime != null) {
      // Periksa apakah tanggal yang dipilih setelah tanggal saat ini
      if (dateTime.isAfter(DateTime.now())) {
        return dateTime;
      } else {
        // Tampilkan pesan atau ambil tindakan lain jika tanggal tidak valid
        // Contoh: ScaffoldMessenger.of(context).showSnackBar(...)
        return null;
      }
    } else {
      return null;
    }
  }

  /// Navigates to the tiketScreen when the action is triggered.
  NaviGateTotiket() {
    Get.toNamed(
      AppRoutes.tiketScreen,
    );
  }
}

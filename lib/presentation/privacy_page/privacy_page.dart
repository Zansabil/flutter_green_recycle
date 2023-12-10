import '../privacy_page/widgets/privacylist_item_widget.dart';
import 'controller/privacy_controller.dart';
import 'models/privacy_model.dart';
import 'models/privacylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_green_recycle/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_green_recycle/widgets/custom_switch.dart';

class PrivacyPage extends StatelessWidget {
  PrivacyPage({Key? key})
      : super(
          key: key,
        );

  PrivacyController controller = Get.put(PrivacyController(PrivacyModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 37.v),
          child: Column(
            children: [
              _buildPrivacyList(),
              SizedBox(height: 24.v),
              _buildVerificationRow(),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 47.h,
                  right: 58.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "msg_simpan_info_akun".tr,
                        style: CustomTextStyles.titleLargeErrorContainer_2,
                      ),
                    ),
                    Obx(
                      () => CustomSwitch(
                        value: controller.isSelectedSwitch.value,
                        onChange: (value) {
                          controller.isSelectedSwitch.value = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 303.h,
                  margin: EdgeInsets.only(
                    left: 47.h,
                    right: 77.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_masuk_ke_khairin_putri2".tr,
                          style: CustomTextStyles.labelLarge_1,
                        ),
                        TextSpan(
                          text: "msg_memasukkan_info".tr,
                          style: CustomTextStyles.labelLarge_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 21.v),
              Divider(
                color: theme.colorScheme.primaryContainer.withOpacity(0.2),
                indent: 9.h,
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
        margin: EdgeInsets.only(
          left: 30.h,
          top: 8.v,
          bottom: 35.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_keamanan".tr,
        margin: EdgeInsets.only(
          top: 8.v,
          bottom: 34.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildPrivacyList() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 21.v,
          );
        },
        itemCount:
            controller.privacyModelObj.value.privacylistItemList.value.length,
        itemBuilder: (context, index) {
          PrivacylistItemModel model =
              controller.privacyModelObj.value.privacylistItemList.value[index];
          return PrivacylistItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildVerificationRow() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 46.h),
      decoration: AppDecoration.outlinePrimaryContainer2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.v),
            child: Text(
              "msg_verifikasi_2_langkah".tr,
              style: CustomTextStyles.titleLargeErrorContainer_2,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconlyLightArrowErrorcontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              right: 11.h,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }
}

import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/core/utils/validation_functions.dart';
import 'package:flutter_green_recycle/widgets/custom_outlined_button.dart';
import 'package:flutter_green_recycle/widgets/custom_text_form_field.dart';
import 'package:flutter_green_recycle/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 19.v),
                    child: Column(children: [
                      Spacer(),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_email".tr,
                              style:
                                  CustomTextStyles.titleSmallPrimaryContainer)),
                      SizedBox(height: 9.v),
                      _buildEmailField(),
                      SizedBox(height: 19.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_password".tr,
                              style:
                                  CustomTextStyles.titleSmallPrimaryContainer)),
                      SizedBox(height: 9.v),
                      _buildPasswordField(),
                      SizedBox(height: 25.v),
                      _buildLoginButton(),
                      SizedBox(height: 25.v),
                      _buildRowOne(),
                      SizedBox(height: 11.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDoesnthavean();
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_doesn_t_have_an2".tr,
                                    style:
                                        CustomTextStyles.bodySmallGray40001_1),
                                TextSpan(
                                    text: "lbl_sign_up".tr,
                                    style: CustomTextStyles.bodySmallPrimary_1)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 23.v),
                      _buildSignInWithGoogleButton(),
                      SizedBox(height: 19.v),
                      _buildSignInWithAppleButton()
                    ])))));
  }

  /// Section Widget
  Widget _buildEmailField() {
    return CustomTextFormField(
        controller: controller.emailFieldController,
        hintText: "msg_youremail_email_com".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordFieldController,
        hintText: "lbl_yourpassword".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 12.v, 20.h, 12.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconlyLightHide,
                    height: 21.adaptSize,
                    width: 21.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 45.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v)));
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomOutlinedButton(
        text: "lbl_masuk".tr,
        buttonStyle: CustomButtonStyles.outlineErrorContainer,
        buttonTextStyle: CustomTextStyles.titleLargePontanoSansErrorContainer,
        onPressed: () {
          onTapLoginButton();
        });
  }

  /// Section Widget
  Widget _buildRowOne() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 10.v),
              child: SizedBox(
                  width: 172.h, child: Divider(color: appTheme.gray300))),
          Text("lbl_or".tr, style: CustomTextStyles.titleSmallGray600),
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 10.v),
              child: SizedBox(
                  width: 172.h, child: Divider(color: appTheme.gray300)))
        ]);
  }

  /// Section Widget
  Widget _buildSignInWithGoogleButton() {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconGoogle,
                height: 18.adaptSize,
                width: 18.adaptSize)),
        onPressed: () {
          onTapSignInWithGoogleButton();
        });
  }

  /// Section Widget
  Widget _buildSignInWithAppleButton() {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconApple,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Navigates to the homecontainerScreen when the action is triggered.
  onTapLoginButton() {
    Get.toNamed(
      AppRoutes.homecontainerScreen,
    );
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtDoesnthavean() {
    Get.toNamed(
      AppRoutes.registerScreen,
    );
  }

  onTapSignInWithGoogleButton() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}

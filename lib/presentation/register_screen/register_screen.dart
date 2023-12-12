import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/core/utils/validation_functions.dart';
import 'package:flutter_green_recycle/global/common/toast.dart';
import 'package:flutter_green_recycle/widgets/custom_outlined_button.dart';
import 'package:flutter_green_recycle/widgets/custom_text_form_field.dart';
import 'package:flutter_green_recycle/domain/googleauth/google_auth_helper.dart';

class RegisterScreen extends StatefulWidget { 
  const RegisterScreen ({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen > {
  final FirebaseAuthService _auth = FirebaseAuthService();
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isSigningUp = false;
  bool _isShowPassword = false;

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(25.h),
            child: Column(
              children: [
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_email".tr,
                    style: CustomTextStyles.titleSmallPrimaryContainer,
                  ),
                ),
                SizedBox(height: 9.v),
                _buildEmailField(),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_phone_number".tr,
                    style: CustomTextStyles.titleSmallPrimaryContainer,
                  ),
                ),
                SizedBox(height: 9.v),
                _buildPhoneNumberField(),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_password".tr,
                    style: CustomTextStyles.titleSmallPrimaryContainer,
                  ),
                ),
                SizedBox(height: 9.v),
                _buildPasswordField(),
                SizedBox(height: 25.v),
                _buildContinueButton(),
                SizedBox(height: 25.v),
                _buildRowEightyFive(),
                SizedBox(height: 22.v),
                _buildSignInWithGoogleButton(),
                SizedBox(height: 25.v),
                _buildSignInWithAppleButton(),
                SizedBox(height: 25.v),
                GestureDetector(
                  onTap: () {
                    onTapTxtAlreadyhavean();
                    _signUp();
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_already".tr,
                          style: CustomTextStyles.bodySmallGray40001_1,
                        ),
                        TextSpan(
                          text: "msg_have_an_account".tr,
                          style: CustomTextStyles.bodySmallGray40001_1,
                        ),
                        TextSpan(
                          text: "lbl_login".tr,
                          style: CustomTextStyles.bodySmallPrimary_1,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  /// Section Widget
  Widget _buildEmailField() {
    return CustomTextFormField(
        controller: _emailController,
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
  Widget _buildPhoneNumberField() {
    return CustomTextFormField(
        controller: _phoneController,
        hintText: "lbl_089526261112".tr,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        });
  }

  /// Section Widget
 Widget _buildPasswordField() {
  return CustomTextFormField(
    controller: _passwordController,
    hintText: "lbl_yourpassword".tr,
    textInputAction: TextInputAction.done,
    textInputType: TextInputType.visiblePassword,
    suffix: InkWell(
      onTap: () {
        setState(() {
          // Atur nilai _isShowPassword menjadi kebalikannya
          _isShowPassword = !_isShowPassword;
        });
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(30.h, 12.v, 20.h, 12.v),
        child: CustomImageView(
          imagePath: _isShowPassword
              ? ImageConstant.imgIconlyLightHide // Ganti dengan ikon tampilan password yang sesuai
              : ImageConstant.imgIconlyLightHide, // Ganti dengan ikon sembunyikan password yang sesuai
          height: 21.adaptSize,
          width: 21.adaptSize,
        ),
      ),
    ),
    suffixConstraints: BoxConstraints(maxHeight: 45.v),
    onSaved: (value) {
      // Set nilai _passwordController pada setiap perubahan nilai
      _passwordController.text = value;
    },
    validator: (value) {
      if (value == null || (!isValidPassword(value, isRequired: true))) {
        return "err_msg_please_enter_valid_password".tr;
      }
      return null;
    },
    obscureText: !_isShowPassword, // Sesuaikan dengan kondisi _isShowPassword
    contentPadding: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v),
  );
}
  /// Section Widget
 _buildContinueButton() {
  return CustomOutlinedButton(
    text: "lbl_continue".tr,
    buttonStyle: CustomButtonStyles.outlineErrorContainerTL18,
    buttonTextStyle: CustomTextStyles.titleLargePontanoSansErrorContainer,
    onPressed: () {
      _signUp();  // Sertakan context di sini
      onTapContinueButton();
    },
  );
}

  /// Section Widget
  Widget _buildRowEightyFive() {
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

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
  
  /// Navigates to the welcomescreenScreen when the action is triggered.
  onTapContinueButton() {
      _signUp();
  }

void _signUp() async {
  
    setState(() {
      isSigningUp = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    try { await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      isSigningUp = false;
    });

    
      showToast(message: "Pengguna berhasil dibuat");
      Navigator.pushNamed(context, "/login_screen");
    }  catch (e) {
      setState(() {
        isSigningUp = false;
      });

      showToast(message: "Terjadi kesalahan $e");
    }
  }
}

  

import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterScreen.
///
/// This class manages the state of the RegisterScreen, including the
/// current registerModelObj
class RegisterController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController phoneNumberFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    phoneNumberFieldController.dispose();
    passwordFieldController.dispose();
  }
}

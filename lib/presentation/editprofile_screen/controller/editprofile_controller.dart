import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/editprofile_screen/models/editprofile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditprofileScreen.
///
/// This class manages the state of the EditprofileScreen, including the
/// current editprofileModelObj
class EditprofileController extends GetxController {
  TextEditingController tfController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController perempuanController = TextEditingController();

  Rx<EditprofileModel> editprofileModelObj = EditprofileModel().obs;

  @override
  void onClose() {
    super.onClose();
    tfController.dispose();
    emailController.dispose();
    perempuanController.dispose();
  }
}

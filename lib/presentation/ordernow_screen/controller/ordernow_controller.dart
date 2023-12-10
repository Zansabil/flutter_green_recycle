import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/ordernow_screen/models/ordernow_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OrdernowScreen.
///
/// This class manages the state of the OrdernowScreen, including the
/// current ordernowModelObj
class OrdernowController extends GetxController {
  TextEditingController frameController = TextEditingController();

  TextEditingController catatantambahanController = TextEditingController();

  Rx<OrdernowModel> ordernowModelObj = OrdernowModel().obs;

  DateTime selectedopenDatePickerDialogDate = DateTime.now();

  get dateController => null;

  get framedateController => null;

  @override
  void onClose() {
    super.onClose();
    frameController.dispose();
    catatantambahanController.dispose();
  }
}

import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/privacy_page/models/privacy_model.dart';

/// A controller class for the PrivacyPage.
///
/// This class manages the state of the PrivacyPage, including the
/// current privacyModelObj
class PrivacyController extends GetxController {
  PrivacyController(this.privacyModelObj);

  Rx<PrivacyModel> privacyModelObj;

  Rx<bool> isSelectedSwitch = false.obs;
}

import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/pickuptrash_screen/models/pickuptrash_model.dart';

/// A controller class for the PickuptrashScreen.
///
/// This class manages the state of the PickuptrashScreen, including the
/// current pickuptrashModelObj
class PickuptrashController extends GetxController {
  Rx<PickuptrashModel> pickuptrashModelObj = PickuptrashModel().obs;
}

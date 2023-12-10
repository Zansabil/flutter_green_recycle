import '../controller/pickuptrash_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PickuptrashScreen.
///
/// This class ensures that the PickuptrashController is created when the
/// PickuptrashScreen is first loaded.
class PickuptrashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PickuptrashController());
  }
}

import '../controller/selecttrash_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelecttrashScreen.
///
/// This class ensures that the SelecttrashController is created when the
/// SelecttrashScreen is first loaded.
class SelecttrashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelecttrashController());
  }
}

import '../controller/tiket_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TiketScreen.
///
/// This class ensures that the TiketController is created when the
/// TiketScreen is first loaded.
class TiketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TiketController());
  }
}

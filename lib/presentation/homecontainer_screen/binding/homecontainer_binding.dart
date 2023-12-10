import '../controller/homecontainer_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomecontainerScreen.
///
/// This class ensures that the HomecontainerController is created when the
/// HomecontainerScreen is first loaded.
class HomecontainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomecontainerController());
  }
}

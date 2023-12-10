import '../controller/welcomescreen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WelcomescreenScreen.
///
/// This class ensures that the WelcomescreenController is created when the
/// WelcomescreenScreen is first loaded.
class WelcomescreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomescreenController());
  }
}

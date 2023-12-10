import '../controller/ordernow_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrdernowScreen.
///
/// This class ensures that the OrdernowController is created when the
/// OrdernowScreen is first loaded.
class OrdernowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrdernowController());
  }
}

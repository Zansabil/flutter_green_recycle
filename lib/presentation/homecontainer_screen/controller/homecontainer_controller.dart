import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/homecontainer_screen/models/homecontainer_model.dart';

/// A controller class for the HomecontainerScreen.
///
/// This class manages the state of the HomecontainerScreen, including the
/// current homecontainerModelObj
class HomecontainerController extends GetxController {
  Rx<HomecontainerModel> homecontainerModelObj = HomecontainerModel().obs;
}

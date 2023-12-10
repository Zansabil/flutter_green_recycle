import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/welcomescreen_screen/models/welcomescreen_model.dart';

/// A controller class for the WelcomescreenScreen.
///
/// This class manages the state of the WelcomescreenScreen, including the
/// current welcomescreenModelObj
class WelcomescreenController extends GetxController {
  Rx<WelcomescreenModel> welcomescreenModelObj = WelcomescreenModel().obs;
}

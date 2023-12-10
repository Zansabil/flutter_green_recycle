import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/information_screen/models/information_model.dart';

/// A controller class for the InformationScreen.
///
/// This class manages the state of the InformationScreen, including the
/// current informationModelObj
class InformationController extends GetxController {
  Rx<InformationModel> informationModelObj = InformationModel().obs;
}

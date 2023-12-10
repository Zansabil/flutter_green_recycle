import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/selecttrash_screen/models/selecttrash_model.dart';

/// A controller class for the SelecttrashScreen.
///
/// This class manages the state of the SelecttrashScreen, including the
/// current selecttrashModelObj
class SelecttrashController extends GetxController {
  Rx<SelecttrashModel> selecttrashModelObj = SelecttrashModel().obs;
}

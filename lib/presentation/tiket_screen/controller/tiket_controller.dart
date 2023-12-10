import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/tiket_screen/models/tiket_model.dart';

/// A controller class for the TiketScreen.
///
/// This class manages the state of the TiketScreen, including the
/// current tiketModelObj
class TiketController extends GetxController {
  Rx<TiketModel> tiketModelObj = TiketModel().obs;
}
